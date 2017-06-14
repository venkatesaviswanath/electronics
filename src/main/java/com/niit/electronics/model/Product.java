package com.niit.electronics.model;
import javax.persistence.*;

@Entity
public class Product 
{			@Id
			 int p_id;
			 String p_name;
			 String p_desc;
			 String p_category;
			 Float p_price;
			 
			@Override
			 public  String toString()
				{
					return "Product [p_id=" + p_id + ", p_name=" + p_name + ", p_category=" + p_category + ",p_desc=" +p_desc+"]";
				}
				public Product() {
					// TODO Auto-generated constructor stub
				}
					public Product(Integer p_id,String p_name, String p_desc, String p_category) {
					// TODO Auto-generated constructor stub
						this.p_id=p_id;
						this.p_name=p_name;
						this.p_desc=p_desc;
						this.p_category=p_category;
				}
				public Product(Integer p_id)
				{
					this.p_id=p_id;
				}
				public int getPid() {
					return p_id;
				}
				public void setPid(Integer p_id) {
					this.p_id = p_id;
				}
				public String getPname() {
					return p_name;
				}
				public void setPname(String p_name) {
					this.p_name = p_name;
				}
				public String getProd_desc() {
					return p_desc;
				}
				public void setProd_desc(String p_desc) {
					this.p_desc = p_desc;
				}
				public String getCategory() {
					return p_category;
				}
				public void setCategory(String p_category) {
					this.p_category = p_category;
				}
				public Float getP_price() {
					return p_price;
				}
				public void setP_price(Float p_price) {
					this.p_price = p_price;
				}

//			public Product(String p_id,String p_name,String p_desc,String p_category,double price)
//			{
//				this.p_id=p_id;
//				this.p_name=p_name;
//				this.p_desc=p_desc;
//				this.p_category=p_category;
//				this.setPrice(price);
//			}
//			public Product(String p_id ,String p_name, String p_category, String p_desc, double price , boolean status ) {
//				
//				this.p_id = p_id;
//				this.p_name = p_name;
//				this.p_category = p_category;
//				this.p_desc = p_desc;
//				this.setPrice(price);
//				this.available= status;
//			}
//			public String getP_id() {
//				return p_id;
//			}
//			public void setP_id(String p_id) {
//				this.p_id = p_id;
//			}
//			public String getP_name() {
//				return p_name;
//			}
//			public void setP_name(String p_name) {
//				this.p_name = p_name;
//			}
//			public String getP_desc() {
//				return p_desc;
//			}
//			public void setP_desc(String p_desc) {
//				this.p_desc = p_desc;
//			}
//			public String getP_category() {
//				return p_category;
//			}
//			public void setP_category(String p_category) {
//				this.p_category = p_category;
//			}
//			public boolean isAvailable() 
//			{
//				// TODO Auto-generated method stub
//				return available;
//			}
//			public void setAvailable(boolean available) 
//			{
//				this.available = available;
//			}
//			public double getPrice() {
//				return price;
//			}
//			public void setPrice(double price) {
//				this.price = price;
//			}

}
