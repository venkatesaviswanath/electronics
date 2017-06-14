package com.niit.electronics.dao;


import java.util.*;
import com.niit.electronics.model.*;

public interface UserDao 
{
	public List<User> getAllUserDetails();
	public void addUser(User s);
	public void removeUser(int uid);
	public void updateUser(User s);
	public User getPersonById(int uid);
	public User getUserByUserName(String uname);

}
