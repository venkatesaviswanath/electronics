package com.niit.electronics.dao;

import java.util.*;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.niit.electronics.model.Product;
public  class ProductDaoImplement implements ProductDAO 
{
	private List<Product> listProduct;
	@Autowired
	SessionFactory sessionFactory;
	@SuppressWarnings("unchecked")
	public List<Product> getProduct()
	{
		Session session=sessionFactory.openSession();
		listProduct=session.createQuery("FROM Product").list();
		System.out.println(listProduct);
		return listProduct;
	}

	@SuppressWarnings("unchecked")
	public List<Product> getProductbyCategory(String cat)
	{
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
//		Product p=(Product)session.load(Product.class,new String(cat));
//		System.out.println(p);
//		listProduct=session.createQuery("Select FROM com.niit.electronis.model.Product p where p.p_category=p_category").setString("category", cat).list();
		Criteria criteria = session.createCriteria(Product.class);
		List<Product> list = criteria.add(Restrictions.eq("p_category", cat)).list();
		tx.commit();
		session.close();
		return (List<Product>) (list.size()>0?list:null);
	}
@Transactional
	public void addProduct(Product p) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.save(p);
		tx.commit();
		session.close();
		System.out.println("Product inserted");
	}

	public void removeProduct(int p_id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		Product p=(Product)session.load(Product.class,new Integer(p_id));
		if(null!=p)
		session.delete(p);
		tx.commit();
		session.close();
	}

	public void updateProduct(Product p) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.update(p);
		tx.commit();
		session.close();
	}

	public Product getProductById(int p_id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		Product p=(Product)session.load(Product.class,new Integer(p_id));
		System.out.println(p);
		return p;
	}

}
