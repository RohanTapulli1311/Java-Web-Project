<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="com.crce.product.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="Components/common_cs_js.jsp"%>
<link rel="stylesheet" href="css/Common_css.css">
</head>
<body>
<div id="cart" align=center>
	<h1 style="text-align:centre">VIEW YOUR CART</h1>

	<div class="container" align="center">
		<div class="row mt-5" >

			<div class="col-md-6" >
				<%
					Cart ob = (Cart) request.getAttribute("Cart");

				try {
					Connection connection = null;
					Statement statement = null;
					ResultSet rs = null;
					PreparedStatement preparedStatement = null;
					String url = "jdbc:mysql://localhost:3306/mydb";
					String username = "root";
					String password = "";
					connection = DriverManager.getConnection(url, username, password);
					String sql = "SELECT * FROM cart where userName = ?";
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1, ob.getUserName());
					rs = preparedStatement.executeQuery();
					int totalsum = 0;
					while (rs.next()) {
						String productname = rs.getString("pName");
				%>

				<div class="card">
					<div class="card-body text-center">
						<h3>
							<%=productname%></h3>
						<%
							try {

							Connection con = null;
							Statement stmt = null;
							ResultSet result = null;

							String url1 = "jdbc:mysql://localhost:3306/mydb";
							String username1 = "root";
							String password1 = "";
							con = DriverManager.getConnection(url1, username1, password1);

							String sql2 = "SELECT * FROM productlist where pname=?";
							PreparedStatement preparedStatement2 = connection.prepareStatement(sql2);
							preparedStatement2.setString(1, productname);
							result = preparedStatement2.executeQuery();
							int count = 0;
						%>

						<%
							while (result.next()) {
						%>


						<th>
							
							<img
								src="images/products/<%=result.getString("imgpath")%>" alt="photo">
							<h3>
								MRP=Rs.<%=result.getInt("MRP")%></h3>
							<h3>
								discount=Rs.<%=result.getInt("discount")%></h3> <%
 	int t1 = result.getInt("MRP");
 int t2 = result.getInt("discount");
 int sum = t1 + t2;
 totalsum = totalsum + sum;
 %>
							<h3>
								Total=Rs.<%=sum%></h3>
						</th>
					</div>
				</div>
				<%
					}
				%>

				<%
					} catch (Exception e) {
				e.printStackTrace();
				}
				%>





				<%
					}
				%>


				<h1>
					TOTAL SUM TO BE PAID=<%=totalsum%></h1>
				<form action="CartServlet2.do" method="post">
					<table border="0" width="100%" bgcolor="#C6DBDA">

						<tr>

							<hr>
							</td>

							<td><input type="hidden" name="userName"
								value="<%=ob.getUserName()%>" /></td>
							<td><input type="hidden" name="password"
								value="<%=ob.getPassword()%>" /></td>
							<td><input type="submit" value="checkout" /></td>
					</table>
				</form>


				<%
					} catch (Exception e) {
				e.printStackTrace();
				}
				%>


			</div>
		</div>
	</div>
	</div>
</body>
</html>