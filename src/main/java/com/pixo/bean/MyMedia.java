package com.pixo.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MyMedia")
public class MyMedia {
	private long id;
	
    private String Title;
	
    private String Description;
	
	private String Tag;
    //private byte[] media;  
	//@Column(unique = true)	
	private String fname;
    private int userId; 
    
    @Id
    @GeneratedValue
    @Column(name = "FILE_ID")
    public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getTag() {
		return Tag;
	}
	public void setTag(String tag) {
		Tag = tag;
	}
	/*public byte[] getMedia() {
		return media;
	}
	public void setMedia(byte[] media) {
		this.media = media;
	}*/
	public int getUserId() {
		return userId;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public MyMedia(String title, String description, String tag, String fname, int userId) {
		super();
		Title = title;
		Description = description;
		Tag = tag;
		this.fname = fname;
		this.userId = userId;
	}
	public MyMedia() {
		super();
	}  
	
}
