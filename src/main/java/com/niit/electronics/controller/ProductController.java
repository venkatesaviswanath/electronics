package com.niit.electronics.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.niit.electronics.dao.ProductDAO;
import com.niit.electronics.dao.ProductDaoImplement;
import com.niit.electronics.model.Product;

@Controller
public class ProductController 
{
	@Autowired
	private ProductDAO pdao;
	@RequestMapping("/Product")
	public String gotoProduct(HttpServletRequest request,ModelMap model)
	{	
		String category=request.getParameter("cat");
		switch (category)
		{
			case "Laptop" : model.addAttribute("catname", "Laptops");
			
			break;
			
			case "Phones" : model.addAttribute("catname", "Mobile Phones");
			
			break;
			
			case "Cameras" : model.addAttribute("catname", "Cameras");
			
			break;
			
			case "Tv" : model.addAttribute("catname", "Televisions");
			
			break;
		
		}
//		ProductDaoImplement pro=new ProductDaoImplement();
		List<Product> prod=pdao.getProductbyCategory(category);
		Gson gson = new Gson();
		String json;
		json = gson.toJson(prod);
		System.out.println(json);
//		model.addAttribute("lists", list);
		model.addAttribute("prod", json);
		return "Products";

	
	}

}
