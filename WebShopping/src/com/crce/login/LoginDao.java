package com.crce.login;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.crce.jdbc.*;

public class LoginDao {
	Connection connection;
	PreparedStatement preparedStatement;
	Statement statement;
	ResultSet rs;

	public boolean checkLoginByUsername(String username, String password) {
		connection = DBUtil.getConnection();
		String sql = "select * from clientregister where username=?";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, username);
			rs = preparedStatement.executeQuery();
			while (rs.next()) {
			
			if (rs.getString("password").equalsIgnoreCase(password)) {
				return true;
			} 
			else
				return false;
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
	public String checkRole(String username) {
		connection = DBUtil.getConnection();
		String sql = "select * from clientregister where username=?";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, username);
			rs = preparedStatement.executeQuery();
			while (rs.next()) {
			return rs.getString("role");
			
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
		return null;
}
}