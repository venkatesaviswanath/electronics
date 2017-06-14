package com.niit.electronics.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.electronics.model.User;

@Repository("us")
public class UserDaoImplement implements UserDao 
{
	public UserDaoImplement() {
		// TODO Auto-generated constructor stub
	}

	private List<User> listUsers;
	@Autowired
	SessionFactory sessionFactory;
	@SuppressWarnings("unchecked")
	public List<User> getAllUserDetails() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		listUsers=session.createQuery("FROM User").list();
		System.out.println(listUsers);
		return listUsers;
	}

	@Transactional
	public void addUser(User s) {
		// TODO Auto-generated method stub
		User us=new User();
		us.setUname(s.getUname());
		us.setPwd(us.getPwd());
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.save(s);
		tx.commit();
		session.close();
		System.out.println("User Details inserted");
	}

	public void removeUser(int uid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		User s=(User)session.load(User.class,new Integer(uid));
		if(null!=s)
		session.delete(s);
		tx.commit();
		session.close();
	}

	public void updateUser(User s) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.update(s);
		tx.commit();
		session.close();
	}

	public User getPersonById(int uid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		User s=(User)session.load(User.class,new Integer(uid));
		tx.commit();
		System.out.println(s);
		return s;
	}

	public User getUserByUserName(String uname) 
	{
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		Criteria criteria = session.createCriteria(User.class);
		User s = (User) criteria.add(Restrictions.eq("uname", uname))
		                             .uniqueResult();
		tx.commit();
		System.out.println(s);
		return s;
	}

}
