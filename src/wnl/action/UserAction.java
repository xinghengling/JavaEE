package wnl.action;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.query.Query;

import freemarker.template.utility.StringUtil;
import wnl.domain.User;
import wnl.service.UserService;
import wnl.serviceimpl.UserServiceImpl;
import wnl.utils.HibernateUtils;
import wnl.utils.StringUtils;

public class UserAction extends BaseAction<User> {

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
		if (users == null || users.size() <= 0) {
			return "non_user"; // 没有对应用户
		}
		for(User u:users){
			if(!user.getPassword().equals(u.getPassword()))
				return "error";
			if("0".equals(u.getUserrank())){
				// 超级管理员
				return "super_admin";
			}else if("1".equals(u.getUserrank())){
				// 管理员
				return "nomal_admin";
			}else{
				// 普通用户
			
				return "user";
			}
		}
		return "error";
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
