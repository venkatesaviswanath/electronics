package com.niit.electronics.config;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.niit.electronics.dao.ProductDAO;
import com.niit.electronics.dao.UserDao;
import com.niit.electronics.model.Product;
public class App 
{
	//@SuppressWarnings("resource")
    public static void main( String[] args)
    {
       AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
      ctx.scan("com.niit.electronics.config");
      ctx.refresh();
//      ProductDAO p=(ProductDAO) ctx.getBean("productBean");
//      Product item=new Product(4,"43","4543","234dsf");
//      p.addProduct(item);
}

}
