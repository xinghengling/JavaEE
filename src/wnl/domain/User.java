package wnl.domain;

public class User {

	private String username;// 注册名
	private String password;// 密码
	private String sex;// 性别
	private String userrank;//用户等级 1 管理员 2其它 0 超级管理员
	private String usernick;//用户昵称
	private String useravatar;//用户头像
	private String userdescription;//描述
	private Long uid;
	
	public Long getUid() {
		return uid;
	}
	public void setUid(Long uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getUserrank() {
		return userrank;
	}
	public void setUserrank(String userrank) {
		this.userrank = userrank;
	}
	public String getUsernick() {
		return usernick;
	}
	public void setUsernick(String usernick) {
		this.usernick = usernick;
	}
	public String getUseravatar() {
		return useravatar;
	}
	public void setUseravatar(String useravatar) {
		this.useravatar = useravatar;
	}
	public String getUserdescription() {
		return userdescription;
	}
	public void setUserdescription(String userdescription) {
		this.userdescription = userdescription;
	}
	
}