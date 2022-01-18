package com.crce.product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.crce.jdbc.*;
public class ProductDao {
	Connection connection;
	PreparedStatement preparedStatement;
	Statement statement;
	ResultSet rs;
	public boolean addProduct(Product P) {
		connection = DBUtil.getConnection();
		String sql = "insert into mydb.productlist values(?,?,?,?,?,?,?)";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,P.getPname() );
			preparedStatement.setInt(2, P.getQuantity());
			preparedStatement.setInt(3,P.getMRP());
			preparedStatement.setString(4,P.getCategory().getC_name());
			preparedStatement.setString(5,P.getDescription());
			preparedStatement.setString(6,P.getImgpath());
			preparedStatement.setInt(7,P.getDiscount());
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
}
