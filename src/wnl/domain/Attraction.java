package wnl.domain;

import java.util.Set;

/**
 * 景点类
 * @author ASUS
 *
 */
public class Attraction {

	private String name; // 景点名称
	private String location; // 地点
	private Long aid;
//	private Set<Comment> comments;
	private String logo; // 景点的logo
	private String description;// 景点的描述
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Long getAid() {
		return aid;
	}
	public void setAid(Long aid) {
		this.aid = aid;
	}
//	public Set<Comment> getComments() {
//		return comments;
//	}
//	public void setComments(Set<Comment> comments) {
//		this.comments = comments;
//	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
