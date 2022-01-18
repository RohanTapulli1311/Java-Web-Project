package com.crce.category;

public class Category {
private String c_name;

public Category(String c_name) {
	super();
	this.c_name = c_name;
}

public String getC_name() {
	return c_name;
}

public void setC_name(String c_name) {
	this.c_name = c_name;
}

@Override
public String toString() {
	return "Category [c_name=" + c_name + "]";
}


}
