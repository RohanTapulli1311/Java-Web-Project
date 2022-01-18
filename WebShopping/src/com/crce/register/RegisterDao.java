package com.crce.register;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.crce.jdbc.*;
public class RegisterDao {
	Connection connection;
	PreparedStatement preparedStatement;
	Statement statement;
	ResultSet rs;

	public void addClient(Register ob) {
		connection = DBUtil.getConnection();
		String sql = "insert into mydb.clientregister values(?,?,?,?,?,?,?,?)";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, ob.getFname());
			preparedStatement.setString(2, ob.getLname());
			preparedStatement.setString(3, ob.getEmail());
			preparedStatement.setLong(4,ob.getContact());
			preparedStatement.setString(5, ob.getGender());
			preparedStatement.setString(6, ob.getUsername());
			preparedStatement.setString(7, ob.getPassword());
			preparedStatement.setString(8, ob.getRole());
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
	public void removeClientByUserName(String username) {
		connection=DBUtil.getConnection();
		int count=0;
		String sql="delete from mydb.clientregister where userName = ? ";
		try {
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, username);
			count=preparedStatement.executeUpdate();
			if(count>0)
				System.out.println("successfully deleted");
			else
				System.out.println("deletion failed");
			
		}
		catch(SQLException e) {
		e.printStackTrace();
		Logger.getLogger(RegisterDao.class.getName()).log(Level.SEVERE, null, e);
		}
		}

}
