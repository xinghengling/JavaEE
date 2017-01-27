package wnl.domain;

import java.util.Date;

/**
 * 评论类
 * 
 * @author ASUS
 * 
 */
public class Comment {

	private String content; // 评论内容
	private Date date; // 评论时间
//	private Attraction attraction;// 评论的景点
	private String username; // 评论人
	private Long cid;

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

//	public Attraction getAttraction() {
//		return attraction;
//	}
//
//	public void setAttraction(Attraction attraction) {
//		this.attraction = attraction;
//	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Long getCid() {
		return cid;
	}

	public void setCid(Long cid) {
		this.cid = cid;
	}

}
