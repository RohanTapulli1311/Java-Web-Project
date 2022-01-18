package com.crce.product;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.crce.jdbc.DBUtil;

public class cartDao {
Connection connection;
PreparedStatement preparedStatement;
Statement statement;
ResultSet rs;
public boolean addToCart(String userName,String password,String pName) {
	connection = DBUtil.getConnection();
	String sql = "insert into cart(userName,password,pName) values(?,?,?)";
	try {
		preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1,userName);
		preparedStatement.setString(2,password);
		preparedStatement.setString(3,pName);
		int count = preparedStatement.executeUpdate();
		if (count > 0) {
			System.out.println("Successfully Inserted");
		} else {
			System.out.println("insertion failed");
		}
	}

	catch (SQLException e) {
		//System.out.println(e);
		e.printStackTrace();
	}finally {
		try {
			connection.close();
		} catch (SQLException e) {

			e.printStackTrace();
			
		}

}
	return false;
}
public int removeItemsCart(String userName) {

	connection = DBUtil.getConnection();
	int count = 0;

	String sql = "delete from mydb.cart where userName = ?";

	try {
		preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, userName);
		count = preparedStatement.executeUpdate();
		if (count > 0) {
			System.out.println("Successfully deleted");
		} else
			System.out.println("deletion failed");

	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		
	}

	return count;
}
}

