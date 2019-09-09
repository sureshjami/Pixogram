package com.pixo.dao;

import java.util.List;

import com.pixo.bean.MyMedia;
import com.pixo.bean.ProfilePicture;
import com.pixo.bean.User;

public interface UserDAO {

	public boolean registerUser(User user);
	public boolean authenticate(String email,String password);
	public User getUser(String email);
	public boolean uploadProfilePicture(ProfilePicture pic);
	public boolean uploadMedia(MyMedia myMedia);
	public ProfilePicture showImage(int id);
	MyMedia addsMedia(MyMedia media);
	List<MyMedia> getMediadetails(String username);
}
