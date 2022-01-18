<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>VIEW CATEGORIES</title>
<%@include file="Components/common_cs_js.jsp"%>
<link rel="stylesheet" href="css/Common_css.css">

</head>
<body>
	<h1>VIEW ADDED CATEGORIES:</h1>
	<div class="container">
		<div class="row mt-5">

			<div class="col-md-6">

				
					
						<%
 try{ 
	 Connection connection = null;
     Statement statement = null;
     ResultSet resultSet = null;
     String url = "jdbc:mysql://localhost:3306/mydb";
		String username = "root";
		String password = "";
     connection=DriverManager.getConnection(url ,username,password);
     statement=connection.createStatement();
     String sql ="SELECT * FROM category";
     resultSet = statement.executeQuery(sql);
     while(resultSet.next()){
 %>
 <div class="card">
<div class="card-body text-center">
<h1><%=resultSet.getString("category") %></h1>
</div>
</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
				
				
			</div>
		</div>
	</div>

</body>
</html>