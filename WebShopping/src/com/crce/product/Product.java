package com.crce.product;

import com.crce.category.Category;

public class Product {
private String pname;
private int quantity;
private int MRP;
private String description;
private String imgpath;
private int discount;
private Category category;
public Product() {
	
}
public Product(String pname, int quantity, int mRP, String description, String imgpath, int discount,
		Category category) {
	super();
	this.pname = pname;
	this.quantity = quantity;
	MRP = mRP;
	this.description = description;
	this.imgpath = imgpath;
	this.discount = discount;
	this.category = category;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public int getMRP() {
	return MRP;
}
public void setMRP(int mRP) {
	MRP = mRP;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getImgpath() {
	return imgpath;
}
public void setImgpath(String imgpath) {
	this.imgpath = imgpath;
}
public int getDiscount() {
	return discount;
}
public void setDiscount(int discount) {
	this.discount = discount;
}

public Category getCategory() {
	return category;
}
public void setCategory(Category category) {
	this.category = category;
}
@Override
public String toString() {
	return "Product [pname=" + pname + ", quantity=" + quantity + ", MRP=" + MRP + ", description=" + description
			+ ", imgpath=" + imgpath + ", discount=" + discount + ", category=" + category + "]";
}



}
