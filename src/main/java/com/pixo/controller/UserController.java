package com.pixo.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pixo.bean.MyMedia;
import com.pixo.bean.ProfilePicture;
import com.pixo.bean.User;
import com.pixo.dao.UserDAO;
import com.pixo.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	public UserService userService;
	
	@Autowired
	public UserDAO userDAO;
	
	static Logger logger = Logger.getLogger(UserController.class);
	/**
	 * registering user
	 * @param user
	 * @return
	 */
	
	@RequestMapping(value="registerUser",method=RequestMethod.GET)
	public ModelAndView registerUser(@ModelAttribute User user){
		ModelAndView mv=new ModelAndView();
		
		
		if(userService.getUser(user.getEmailId())==null){
			boolean result=userService.registerUser(user);
			if(result)
				logger.info("Registration successful !");
			else
				logger.warn("Registration failed ! Check EmailId or Password ...");
			mv.addObject("Registerstatus","Successfully registered! Proceed to login Page!");
			mv.setViewName("Login");
		}
		else {
			mv.addObject("Registerstatus","already registered with this mail");
			mv.setViewName("SignUp");
		}
		
		return mv;
	}
	
	/**
	 * after registering or normal login
	 * @param emailId
	 * @param password
	 * @param request
	 * @return
	 */
	@RequestMapping(value="LoginUser",method=RequestMethod.POST)
    public ModelAndView UserAuthentication(@RequestParam("EmailId") String emailId,@RequestParam("Password") String password,HttpServletRequest request){	
		
		logger.info("Credential A Authenticating ...");	      	      
	  	ModelAndView mv=new ModelAndView();
    	boolean result=userService.authenticate(emailId, password);
    	HttpSession session=request.getSession();
    	session.setAttribute("EmailId", emailId);
    	
    	if(result){
    		logger.info("Authentication Successful ...");
    		User user=userService.getUser(emailId);
    		String name=user.getName();
    		int id=user.getId();
    		session.setAttribute("UserId", id);
    		mv.addObject("userid",id);
    		mv.setViewName("Welcome");
    		mv.addObject("username",name);
    	}
    	else{	
    		logger.warn("Authentication failed ! Wrong Email or Password ...");	
    		mv.addObject("status","Wrong Email or Password!");
			mv.setViewName("Login");
    	}   	
    	return mv;
    }
	
	/**
	 * uploading profile picture
	 */
	
	 @RequestMapping(value = "uploadPicture", method = RequestMethod.POST)
	    public ModelAndView handleFileUpload(HttpServletRequest request,@RequestParam CommonsMultipartFile[] profilePicture) throws Exception {
	          ModelAndView mv=new ModelAndView();
	        if (profilePicture != null && profilePicture.length > 0) {
	            for (CommonsMultipartFile aFile : profilePicture)
	            {      
	                System.out.println("Saving file: " + aFile.getOriginalFilename());
	                int userId=(int)request.getSession().getAttribute("UserId"); 
	                ProfilePicture pic = new ProfilePicture();
	                pic.setFileName(aFile.getOriginalFilename());
	                pic.setData(aFile.getBytes());
	                pic.setUserId(userId);
	                boolean result=userDAO.uploadProfilePicture(pic);
	                if(result)
	                {
	                	mv.addObject("status","Uploaded succesfully!");
	                	mv.setViewName("Welcome");
	                }
	            }
	        }	  
	        return mv;
	    }
	/* @RequestMapping(value = "showImage")
	 public ModelAndView showImage(HttpServletRequest request, HttpServletResponse response){	
			ModelAndView mv=new ModelAndView();	
	    	HttpSession session=request.getSession();
	    	int userId=(int)request.getSession().getAttribute("UserId"); 
	    	ProfilePicture picture=userDAO.showImage(userId);
	    	
	    	response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
	        try {
				response.getOutputStream().write(picture.getData());
				response.getOutputStream().close();
			} catch (IOException e) {			
				e.printStackTrace();
			}	        	   
	    	return mv;
	    } */
	 
	/**
	 * directory for uploaded files
	 */
	 public static String uploadDirectory = "C:\\Users\\Admin\\Desktop\\PixoGram\\src\\main\\resources\\media";
	 /**
	  * for uploading single file uploading
	  * @param request
	  * @param media
	  * @param title
	  * @param description
	  * @param tags
	  * @return
	  * @throws Exception
	  */
	 @RequestMapping(value = "uploadMedia", method = RequestMethod.POST)
	    public ModelAndView uploadMedia(HttpServletRequest request,@RequestParam("media") CommonsMultipartFile[] media,@RequestParam("title") String title,
	    		@RequestParam("description") String description,@RequestParam("tags") String tags) throws Exception {
		 
	          ModelAndView mv=new ModelAndView();
	        if (media != null && media.length > 0) {
	            for (CommonsMultipartFile aFile : media)
	            {      
	                System.out.println("Saving file: " + aFile.getOriginalFilename());
	                int userId =(int)request.getSession().getAttribute("UserId"); 
	                byte[] bytes = aFile.getBytes();
	                String a=aFile.getOriginalFilename();
	                String sub=a.substring(a.lastIndexOf('\\')+1, a.length());
	                MyMedia myMedia=new MyMedia(title, description,tags,sub,userId);
	                this.userService.addsMedia(myMedia);
	                Path path = Paths.get( uploadDirectory + sub);
	                Files.write(path, bytes);
	                mv.addObject("status","Uploaded succesfully!");
                	mv.setViewName("UploadSingle");
	            }
	        }	  
	        return mv;
	    }
	 
	 /**
	  * if user wants to upload multiple media he/she can upload max of 3 files
	  * @param request
	  * @param media
	  * @param title
	  * @param description
	  * @param tags
	  * @return
	  * @throws Exception
	  */
	 @RequestMapping(value = "uploadMultipleMedia", method = RequestMethod.POST)
	    public ModelAndView uploadMultipleMedia(HttpServletRequest request,@RequestParam("media") CommonsMultipartFile[] media,@RequestParam("title") String title,
	    		@RequestParam("description") String description,@RequestParam("tags") String tags) throws Exception {
	          ModelAndView mv=new ModelAndView();
	        if (media != null && media.length > 0) {
	        	
	            for (CommonsMultipartFile aFile : media)
	            {      
	                System.out.println("Saving file: " + aFile.getOriginalFilename());
	                int userId=(int)request.getSession().getAttribute("UserId");
	                byte[] bytes = aFile.getBytes();
	                String a=aFile.getOriginalFilename();
	                String sub=a.substring(a.lastIndexOf('\\')+1, a.length());
	                MyMedia myMedia=new MyMedia(title, description,tags,sub,userId);
	                this.userService.addsMedia(myMedia);
	                Path path = Paths.get( uploadDirectory + sub);
	                Files.write(path, bytes);
	                mv.addObject("status","Uploaded succesfully!");
                	mv.setViewName("UploadMultiple");
	            }
	        }	  
	        return mv;
	    }
	 
	 /**
	  * after user loggs in successfully #home page
	  * @param model
	  * @param request
	  * @param res
	  * @return
	  */
	 @RequestMapping(value="welcome")
	    public ModelAndView WelcomePage(Model model, HttpServletRequest request, HttpServletResponse res){	
			
			logger.info("Credential A Authenticating ...");	      	      
		  	ModelAndView mv=new ModelAndView();
	    	HttpSession session=request.getSession();
	    	String emailId=(String)request.getSession().getAttribute("EmailId"); 
	    	User user=userService.getUser(emailId);
	    	String name=user.getName();
	    	int id=user.getId();
	    	session.setAttribute("UserId", id);
	    	mv.addObject("userid",id);
	    	mv.setViewName("Welcome");
	    	mv.addObject("username",name);   
	    	
	    	List<MyMedia> m = this.userService.getMediadetails("1");
	    	System.out.println("list found");
	    	System.out.print(m);
	    	for(int i=0;i<m.size();i++)
	    	{
	    	m.get(i).setFname("C:\\Users\\Admin\\Desktop\\PixoGram\\src\\main\\resources\\media".concat(m.get(i).getFname()));	
	    	}
	    	//model.addAttribute("rakesh",m);
	    	mv.addObject("rakesh",m);
	    	return mv;
	    }
	 /**
	  * for account updating
	  * @param request
	  * @return
	  */
	 @RequestMapping(value="accountUpdate")
		public ModelAndView accountUpdatePage(HttpServletRequest request){
		 
			logger.info("Credential A Authenticating ...");	      	      
		  	ModelAndView mv=new ModelAndView();
	    	HttpSession session=request.getSession();
	    	String emailId=(String)request.getSession().getAttribute("EmailId"); 
	    	System.out.println("email id is "+emailId);
	    	User user=userService.getUser(emailId);
	    	String name=user.getName();
	    	int id=user.getId();
	    	session.setAttribute("UserId", id);
	    	mv.addObject("userid",id);
	    	mv.setViewName("AccountUpdate");
	    	mv.addObject("username",name);  
			
			return mv;
		}
	 
	 
	 /**
	  * for maintaining log of activity
	  * @param request
	  * @return
	  */
	 @RequestMapping(value="news")
		public ModelAndView News(HttpServletRequest request){
		 logger.info("Credential A Authenticating ...");	      	      
		  	ModelAndView mv=new ModelAndView();
	    	HttpSession session=request.getSession();
	    	String emailId=(String)request.getSession().getAttribute("EmailId"); 
	    	System.out.println("email id is "+emailId);
	    	User user=userService.getUser(emailId);
	    	String name=user.getName();
	    	int id=user.getId();
	    	session.setAttribute("UserId", id);
	    	mv.addObject("userid",id);
	    	mv.setViewName("NewsFeed");
	    	mv.addObject("username",name);  
			
			return mv;
		}
	 
	 /**
	  * for loading single upload file page
	  * @param request
	  * @return
	  */
	 @RequestMapping(value="singlemedia")
		public ModelAndView UploadSinglePage(HttpServletRequest request){
		 logger.info("Credential A Authenticating ...");	      	      
		  	ModelAndView mv=new ModelAndView();
	    	HttpSession session=request.getSession();
	    	String emailId=(String)request.getSession().getAttribute("EmailId"); 
	    	System.out.println("email id is "+emailId);
	    	User user=userService.getUser(emailId);
	    	String name=user.getName();
	    	int id=user.getId();
	    	session.setAttribute("UserId", id);
	    	mv.addObject("userid",id);
	    	mv.setViewName("UploadSingle");
	    	mv.addObject("username",name);  
			
			return mv;
		}
	 
	 /**
	  * for loading multiple file upload page
	  * @param request
	  * @return
	  */
	 @RequestMapping(value="multiplemedia")
		public ModelAndView UploadMultiplePage(HttpServletRequest request){
		 logger.info("Credential A Authenticating ...");	      	      
		  	ModelAndView mv=new ModelAndView();
	    	HttpSession session=request.getSession();
	    	String emailId=(String)request.getSession().getAttribute("EmailId"); 
	    	System.out.println("email id is "+emailId);
	    	User user=userService.getUser(emailId);
	    	String name=user.getName();
	    	int id=user.getId();
	    	session.setAttribute("UserId", id);
	    	mv.addObject("userid",id);
	    	mv.setViewName("UploadMultiple");
	    	mv.addObject("username",name);  
			
			return mv;
		}
	 /**
	  * in any page if user clicks the mymedia page it will be reached here
	  * @param request
	  * @return
	  */
	 @RequestMapping(value="home")
		public ModelAndView Home(HttpServletRequest request){
		 logger.info("Credential A Authenticating ...");	      	      
		  	ModelAndView mv=new ModelAndView();
	    	HttpSession session=request.getSession();
	    	String emailId=(String)request.getSession().getAttribute("EmailId"); 
	    	System.out.println("email id is "+emailId);
	    	User user=userService.getUser(emailId);
	    	String name=user.getName();
	    	int id=user.getId();
	    	session.setAttribute("UserId", id);
	    	mv.addObject("userid",id);
	    	mv.setViewName("Welcome");
	    	mv.addObject("username",name);  
			
			return mv;
		}
	 
}
