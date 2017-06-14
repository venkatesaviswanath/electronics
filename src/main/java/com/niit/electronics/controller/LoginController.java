package com.niit.electronics.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.electronics.dao.UserDao;
import com.niit.electronics.model.User;

@Controller
public class LoginController {
	@Autowired
	private UserDao userdao;
	public LoginController() {
		// TODO Auto-generated constructor stub
	}

	@RequestMapping(value={"/login-handler"},method=RequestMethod.POST)
	public String loginhandler(HttpSession session, @ModelAttribute User user,Model model)
	{	System.out.println(user);
		User us=userdao.getUserByUserName(user.getUname());
		System.out.println(us);
	    try
	    {
	    	if(user.getPwd().equals(us.getPwd()))
	    {	
	    	System.out.println("Success!!!");
	    	session.setAttribute("Name", us.getFname());
	    	if(us.getRole().equals("ROLE_ADMIN"))
		    		{
		    			return "Admin";
		    		}
	    	return "Welcome";
	    }
	    else
	    {	
	    	model.addAttribute("Error","Password Incorrect");
		return "Login";
	    }
	}catch(NullPointerException e)
	{
		model.addAttribute("Error","UserName Incorrect");
		return "Login";
	}
	}
	@RequestMapping("/Signout")
	protected String signout(HttpSession session)
	{
		session.invalidate();
		return "Home";
	}
}