//package com.niit.electronics.controller;
//
//import org.springframework.context.annotation.AnnotationConfigApplicationContext;
//
//import com.niit.electronics.dao.ProductDAO;
//import com.niit.electronics.model.Product;
//
//public class InserProd {
//
//	public InserProd() {
//		// TODO Auto-generated constructor stub
//	}
//	@SuppressWarnings("resource")
//	 public static void main(String[] args)
//	    {
//		 
//	}
//	public void addp(Product p)
//	{
//		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
//	      ctx.scan("com.niit.electronics.config");
//	      ctx.refresh();
//	      ProductDAO pd=(ProductDAO)ctx.getBean("productBean");
//	      pd.addProduct(p);
//	}
//	public void remove(Integer pid)
//	{
//		 AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
//	      ctx.scan("com.niit.electronics.config");
//	      ctx.refresh();
//	      ProductDAO pd=(ProductDAO)ctx.getBean("productBean");
//	      pd.removeProduct(pid);
//	}
//	public void update(Product p)
//	{
//		 AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
//	      ctx.scan("com.niit.electronics.config");
//	      ctx.refresh();
//	      ProductDAO pd=(ProductDAO)ctx.getBean("productBean");
//	      pd.updateProduct(p);
//	}
//
//}
