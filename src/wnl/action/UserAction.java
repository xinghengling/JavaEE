package wnl.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.hibernate.Session;
import org.hibernate.query.Query;

import freemarker.template.utility.StringUtil;
import wnl.domain.User;
import wnl.service.UserService;
import wnl.serviceimpl.UserServiceImpl;
import wnl.utils.HibernateUtils;
import wnl.utils.StringUtils;

public class UserAction extends BaseAction<User> {

	private String jsonString; // Action返回的json数据
	
	public void setJsonString(String jsonString) {
		this.jsonString = jsonString;
	}
	public String getJsonString() {
		return jsonString;
	}
	private User user = new User();
	@Resource(name="userService")
	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public UserService getUserService() {
		return userService;
	}
	public String login() {
        
		List<User> users = userService.findByName(user.getUsername());
		String status="";
		JSONObject jsonObject=null;
		Map<String, Object> map=new HashMap<String, Object>();
		if (users == null || users.size() <= 0) {
			map.put("status", "none");
			jsonObject=JSONObject.fromObject(map);
			jsonString=jsonObject.toString();jsonString=jsonObject.toString();
			return "non_user"; // 没有对应用户
		}
		for(User u:users){
			if(!user.getPassword().equals(u.getPassword())){
				map.put("status", "error");
				jsonObject=JSONObject.fromObject(map);
				jsonString=jsonObject.toString();
				return "error";
			}
			if("0".equals(u.getUserrank())){
				// 超级管理员
				System.out.println("管理员登录中……");
				map.put("status", "super_admin");
				jsonObject=JSONObject.fromObject(map);
				jsonString=jsonObject.toString();
				return "super_admin";
			}else if("1".equals(u.getUserrank())){
				// 管理员
				map.put("status", "normal_admin");
				jsonObject=JSONObject.fromObject(map);
				jsonString=jsonObject.toString();
				return "normal_admin";
			}else{
				// 普通用户
				map.put("status", "user");
				jsonObject=JSONObject.fromObject(map);
				jsonString=jsonObject.toString();
				return "user";
			}
		}
		return "error";
	}
	/**
	 *  查找所有用户
	 * @return
	 */
    public String findAllUsers(){
    	List<User> users=userService.findAll(User.class);
    	Map<String, Object> map=new HashMap<String, Object>();
    	String status="";
    	int no=0; // 条数
    	if(users==null){
    		status="error";
    	}else{
    		no=users.size();
    		status="right";
    	}
    	map.put("status", status);
    	map.put("no", no);
    	map.put("users", users);
        // Map对象转成JSON
    	JSONObject jsonObject=JSONObject.fromObject(map);
    	jsonString=jsonObject.toString();
     	System.out.println("get all users ok"+"\n"+jsonString);
    	return "getAllUser_ok";
    }
	public String regist() {

		String phone = servletRequest.getParameter("username");
		String pwd = servletRequest.getParameter("password");
		String nick = servletRequest.getParameter("nick");
		String man = servletRequest.getParameter("man");
		String woman = servletRequest.getParameter("woman");
        String sex="男";
        if(StringUtils.isEmpty(man))
        	sex="女";
		String userrank="2";
		if(!StringUtils.isEmpty(phone)&&StringUtils.isNumberic(phone)&&!StringUtils.isEmpty(pwd)){
			User u=new User();
			u.setPassword(pwd);
			u.setUsername(phone);
			u.setUsernick(nick);
			u.setSex(sex);
			u.setUserrank(userrank);
			u.setUserdescription("普通用户");
			userService.save(u);
			return "regist_success";
		}else{
			return "error";
		}
		
	}

	@Override
	public User getModel() {
		return this.user;
	}

}
