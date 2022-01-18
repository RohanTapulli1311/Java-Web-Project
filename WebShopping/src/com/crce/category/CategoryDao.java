package com.crce.category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.crce.jdbc.DBUtil;
import com.crce.register.Register;
import com.crce.register.RegisterDao;

public class CategoryDao {
	Connection connection;
	PreparedStatement preparedStatement;
	Statement statement;
	ResultSet rs;
	public void addCategory(Category category) {
			connection = DBUtil.getConnection();
			String sql = "insert into mydb.category values(?)";
			try {
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setString(1, category.getC_name());
				int count = preparedStatement.executeUpdate();
				if (count > 0) {
					System.out.println("Successfully Inserted");
				} else {
					System.out.println("insertion failed");
				}

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				Logger.getLogger(RegisterDao.class.getName()).log(Level.SEVERE, null, e);
			}

		
	}
	public boolean checkCategory(Category category) {
		connection = DBUtil.getConnection();
		String sql = "select * from category where category=?";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,category.getC_name());
			rs = preparedStatement.executeQuery();
			while (rs.next()) {
			
			if (rs.getString("category").equalsIgnoreCase(category.getC_name())) {
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
}

