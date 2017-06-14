package com.niit.electronics.dao;

import java.util.List;

import com.niit.electronics.model.Product;

public interface ProductDAO 
{
	public List<Product> getProduct();

	public List<Product> getProductbyCategory(String cat);

	public void addProduct(Product p);
	public void removeProduct(int p_id);
	public void updateProduct(Product p);
	public Product getProductById(int p_id);

	
}