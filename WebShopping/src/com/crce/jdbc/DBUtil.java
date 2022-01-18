package com.crce.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {

	public static Connection getConnection() {
		Connection con = null;

		String url = "jdbc:mysql://localhost:3306/mydb";
		String username = "root";
		String password = "";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
			System.out.println(con);
			System.out.println("Connected!");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
			//finally {
//			
//			 try { 
//				 con.close(); } 
//			 catch (SQLException e) { // TODO Auto-generated catch
//			  e.printStackTrace(); }
//			 
//		}

		return con;
	}

	public static void closeConnection(Connection con) {

		try {
			System.out.println(con);
			if (con != null) {
				con.close();
			}
			System.out.println(con);
			// Statement st = con.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void closeConnection(Statement statement) {

		try {
			System.out.println(statement);
			if (statement != null) {
				statement.close();
			}
			System.out.println(statement);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void closeConnection(PreparedStatement preparedStatement) {

		try {
			System.out.println(preparedStatement);
			if (preparedStatement != null) {
				preparedStatement.close();
			}
			System.out.println(preparedStatement);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void closeConnection(ResultSet rs) {

		try {
			System.out.println(rs);
			if (rs != null) {
				rs.close();
			}
			System.out.println(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
