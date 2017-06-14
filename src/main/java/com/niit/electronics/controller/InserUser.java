//package com.niit.electronics.controller;
//
//import org.springframework.context.annotation.AnnotationConfigApplicationContext;
//
//import com.niit.electronics.dao.ProductDAO;
//import com.niit.electronics.dao.UserDao;
//import com.niit.electronics.model.User;
//
//public class InserUser 
//{
//	public InserUser() {
//		// TODO Auto-generated constructor stub
//	}
//	@SuppressWarnings("resource")
//	 public static void main(String[] args)
//	    {
//			     
//	}
//	public void add(User s)
//	{
//		 AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
//	      ctx.scan("com.niit.electronics.config");
//	      ctx.refresh();
//	      ProductDAO pd=(ProductDAO)ctx.getBean("productBean");
//	      UserDao us=(UserDao)ctx.getBean("userBean");
//	      System.out.println(s);
//	      us.addUser(s);
//	}
//}
