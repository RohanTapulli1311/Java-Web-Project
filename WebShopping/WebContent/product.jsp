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
<title>Insert title here</title>
<%@include file="Components/common_cs_js.jsp"%>
<link rel="stylesheet" href = "css/Common_css.css">
</head>
<body>

<%


try {
	Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
%>
<div id = "prod1">
<div align="center">

<h1>ADD PRODUCT</h1>
<form action="ProductServlet.do" method="POST" enctype="multipart/form-data">
<table >
<tr>
 <td>PRODUCT NAME:</td>
 <td><input type="text" name="pname" placeholder="enter product name" required="required"></td>
 </tr>
 <tr>
 <td>SELECT CATEGORY:</td>
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
     %>    
     <td><select name="category">
     <%
     while(resultSet.next()){
 

 %>
 <option value=<%=resultSet.getString("category") %>>
 <%=resultSet.getString("category") %>
 </option>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</select></td>
 </tr>
 <tr>
 <td>QUANTITY:</td>
 <td><input type="text" name="quantity" placeholder="enter Quantity of product" required="required"></td>
 </tr>
 
 <tr>
 <td>MRP for the product:</td>
 <td><input type="text" name="MRP" placeholder="SET an MRP. for your product" required="required"></td>
</tr>


 <tr>
 <td>DESCRIPTION OF THE PRODUCT:</td>
 </tr>
 <tr>
 <td><textarea style="height: 250px; width: 500px;" name="description" placeholder="Give a detailed description of your product" required="required">
 </textarea></td>
 </tr>
<tr>
 <td>UPLOAD IMAGE HERE:</td>
 
 <td>
 <input type="file" name="imgpath" required="required"></td>
 </tr>
 
  <tr>
 <td>DISCOUNT(OPTIONAL):</td>
 <td><input type="text" name="discount" placeholder="Enter discount(optional)" required="required"></td>
 </tr>
 
<tr>
<td><input type="submit" value="ADD" /></td>
<td><input type="reset" value="clear" /></td>
</tr>
</table>
</form>
</div>

 

</body>
</html>