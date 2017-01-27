package wnl.domain;
/**
 *  管理员类
 * @author ASUS
 *
 */
public class Adminator {

	private String adminName;//用户名
	private String adminPSW;//密码
	private Long aid; // 管理员id
	
	public void setAid(Long aid) {
		this.aid = aid;
	}
	public Long getAid() {
		return aid;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPSW() {
		return adminPSW;
	}
	public void setAdminPSW(String adminPSW) {
		this.adminPSW = adminPSW;
	}
}

