package com.niit.electronics.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class User {
	public User(){}        
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	int uid;
	String fname;
	String city; 
	String emailid;
	String uname;
	String password; 
	String role="ROLE_USER";
	Long no;
	
	public User(String fname,String city, String addr, String pcode, String emailid, String uname, String password, String role) {
		super();
		this.fname = fname;
		this.city = city;
		this.emailid = emailid;
		this.uname = uname;
		this.password = password;
		this.role=role;
	}
	
	@Override
	public String toString() {
		return "User [uid=" + uid + ", fname=" + fname + ",city="+ city + ", emailid=" + emailid + ", uname=" + uname + ", password="
				+ password + ", role=" + role +"]";
	}

	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public Long getNo() {
		return no;
	}

	public void setNo(Long no) {
		this.no = no;
	}
//	public String getLname() {
//		return lname;
//	}
//	public void setLname(String lname) {
//		this.lname = lname;
//	}
//	public String getCountry() {
//		return country;
//	}
//	public void setCountry(String country) {
//		this.country = country;
//	}
//	public String getNationality() {
//		return nationality;
//	}
//	public void setNationality(String nationality) {
//		this.nationality = nationality;
//	}
//	public String getGender() {
//		return gender;
//	}
//	public void setGender(String gender) {
//		this.gender = gender;
//	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return password;
	}
	public void setPwd(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

}
