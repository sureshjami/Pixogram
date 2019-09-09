package com.pixo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pixo.bean.MyMedia;
import com.pixo.bean.ProfilePicture;
import com.pixo.bean.User;
import com.pixo.dao.UserDAO;

@Service("UserService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	public UserDAO userDAO;
	
	public UserServiceImpl(){
		
	}
	
	public boolean registerUser(User user) {
		return userDAO.registerUser(user);
	}

	public boolean authenticate(String email, String password) {
		return userDAO.authenticate(email, password);
	}

	public User getUser(String email) {
		return userDAO.getUser(email);
	}

	public boolean uploadProfilePicture(ProfilePicture pic) {
		return userDAO.uploadProfilePicture(pic);
	}

	@Override
	public MyMedia addsMedia(MyMedia media) {
		// TODO Auto-generated method stub
		return userDAO.addsMedia(media);
	}

	@Override
	public List<MyMedia> getMediadetails(String username) {
		// TODO Auto-generated method stub
		return userDAO.getMediadetails(username);
	}

}
