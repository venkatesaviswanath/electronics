package com.niit.electronics.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.electronics.dao.ProductDAO;
import com.niit.electronics.model.Product;
@Controller
public class AdminProductController 
{
	@Autowired
	private ProductDAO prodao;
	@RequestMapping(value="/product-handler",method=RequestMethod.POST)
	public String registerhandler(HttpSession session, @ModelAttribute Product p,Model model)
	{	
		System.out.println(p);
		prodao.addProduct(p);
		return "Admin";
	}

}
