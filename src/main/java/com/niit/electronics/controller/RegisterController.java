package com.niit.electronics.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.electronics.dao.UserDao;
import com.niit.electronics.model.User;
@Controller
public class RegisterController 
{
	@Autowired
	private UserDao userdao;
	@RequestMapping(value={"/register-handler"},method=RequestMethod.POST)
	public String registerhandler(HttpSession session, @ModelAttribute User user,Model model)
	{	
		System.out.println(user);
		userdao.addUser(user);
		return "Login";
	}
}
