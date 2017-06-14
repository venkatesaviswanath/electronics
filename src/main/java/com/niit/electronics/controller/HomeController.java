package com.niit.electronics.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
//import com.niit.electronics.dao.ProductDaoImplement;
import com.niit.electronics.model.Product;
import com.niit.electronics.model.User;

@Controller
public class HomeController 
{
		// TODO Auto-generated constructor stub
	
	@RequestMapping(value={"/Admin","/AdminLogin"})
	public String gotoAdminLogin(Model model)
	{
		model.addAttribute("user",new User());
	      return "Admin-Login";
	}
	@RequestMapping("/adminproduct")
	public String gotoadminproduct(Model model)
	{
		model.addAttribute("p",new Product());
	      return "adminproduct";
	}
	@RequestMapping("/odmin")
	public String gotoAdmin()
	{
	      return "Admin";
	}
	@RequestMapping(value={"/","/Home"})
	public String gotoHome()
	{
	      return "Home";
	}
	@RequestMapping("/Login")
	public String gotoLogin(Model model)
	{
		model.addAttribute("user",new User());
	      return "Login";
	}
	@RequestMapping("/Register")
	public String gotoRegister(Model model)
	{
		model.addAttribute("user",new User());
	      return "Register";
	}
	@RequestMapping("/Welcome")
	public String gotoWelcome()
	{
	      return "Welcome";
	}
//			@RequestMapping("/process")
//			public String gotoProces(HttpServletRequest request, ModelMap model)
//			{
//				String pd=request.getParameter("p_id");
//				Integer pid=Integer.parseInt(pd.trim());
//				String pname=request.getParameter("p_name");
//				String pdes=request.getParameter("p_desc");
//				String pcat=request.getParameter("p_cat");
//				Product p=new Product(pid,pname,pdes,pcat);
//				InserProd ip=new InserProd();
//				ip.addp(p);
//				return "process";
//			}
//			@RequestMapping("/update")
//			public String gotoUpdate(HttpServletRequest request, ModelMap model)
//			{
//				String pd=request.getParameter("p_id");
//				Integer pid=Integer.parseInt(pd.trim());
//				String pname=request.getParameter("p_name");
//				String pdes=request.getParameter("p_desc");
//				String pcat=request.getParameter("p_cat");
//				Product p=new Product(pid,pname,pdes,pcat);
//				InserProd ip=new InserProd();
//				ip.update(p);
//				return "update";
//			}
//			@RequestMapping("/delete")
//			public String gotoDelete(HttpServletRequest request, ModelMap model)
//			{
//				String pd=request.getParameter("p_id");
//				Integer pid=Integer.parseInt(pd.trim());
//				Product p1=new Product(pid);
//				InserProd ip1=new InserProd();
//				ip1.remove(pid);
//				return "delete";
//			}
			
}
