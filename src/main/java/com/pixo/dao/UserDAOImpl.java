package com.pixo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.pixo.bean.MyMedia;
import com.pixo.bean.ProfilePicture;
import com.pixo.bean.User;

@Repository("UserDAO")
public class UserDAOImpl implements UserDAO {
	//@Autowired
	//private EntityManager manager;

	@Autowired
	@Qualifier("sessionFactory")
	SessionFactory sessionFactory;
	
	public UserDAOImpl() {
    }

	public UserDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
	
	@Transactional
	public boolean registerUser(User user) {
		
		Session session=null;
		try{
			session=sessionFactory.getCurrentSession();
			session.save(user);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
		
	}

	@Transactional
	public boolean authenticate(String email, String password) {
		Session session=null;
		session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from User where EmailId=? and Password=?");
		query.setParameter(0,email);
		query.setParameter(1,password);
		User user=(User)query.getSingleResult();
		return true;
	}

	@Transactional
	public User getUser(String email) {
		Session session=null;
		session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from User where EmailId=?");
		query.setParameter(0,email);
		User user=(User)query.getSingleResult();
		return user;
	}

	@Transactional
	public boolean uploadProfilePicture(ProfilePicture pic) {
		sessionFactory.getCurrentSession().save(pic);
		return true;	
	}

	@Transactional
	public ProfilePicture showImage(int id) {
		/*Session session=null;
		session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from ProfilePicture where userId=?");
		query.setParameter(0,id);
		ProfilePicture file=(ProfilePicture)query.getSingleResult();
		return file;	*/
		return null;
	}

	@Transactional
	public boolean uploadMedia(MyMedia myMedia) {
		sessionFactory.getCurrentSession().save(myMedia);
		return true;
	}

	@Transactional
	@Override
	public MyMedia addsMedia(MyMedia media) {
		//MyMedia m = manager.merge(media);
		sessionFactory.getCurrentSession().save(media);

		
		return null;
	}

	@Transactional
	@Override
	public List<MyMedia> getMediadetails(String username) {
		Session session=null;
		session=sessionFactory.getCurrentSession();
		Query q = session.createQuery("from MyMedia m where m.userId=:username");
		q.setParameter("username", Integer.parseInt(username));
		List<MyMedia> getMedia = q.getResultList();
		return getMedia;
	}
}
