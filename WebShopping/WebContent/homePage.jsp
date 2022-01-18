<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="com.crce.login.login"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME PAGE</title>
<%@include file="Components/common_cs_js.jsp"%>
</head>
<body>
	<%
		login ob = (login) request.getAttribute("login");

	if (ob == null) {
	%>
	<%@include file="Components/navBar.jsp"%>
	<%
		} else {
	System.out.print(ob);
	%>
	<form action="UserInfoServlet.do" method="post">


		<td><input type="hidden" name="userName"
			value="<%=ob.getUsername()%>" /></td>
		<td><input type="hidden" name="password"
			value="<%=ob.getPassword()%>" /></td> <input type="submit"
			 style="position:absolute; top:65vh; left:39vw;" value="USER PORTAL" />
		</td>

	</form>


	<%@include file="Components/navBarLogin.jsp"%>
	<%
		}
	%>


	<%-- <%@include file="Components/navBar.jsp"%>
 --%>

	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="images/hm3.jpeg" height="350"
					alt="First slide">

			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/hm2.jpeg" height="350"
					alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/hm1.jpeg" height="350"
					alt="Third slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>



	<br>
	<br>
	<br>
	<br>
	<br>

	<%
		try {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		String url = "jdbc:mysql://localhost:3306/mydb";
		String username = "root";
		String password = "";
		connection = DriverManager.getConnection(url, username, password);

		statement = connection.createStatement();

		String sql = "SELECT * FROM category";

		resultSet = statement.executeQuery(sql);
		String s = "";
		while (resultSet.next()) {
			s = resultSet.getString("category");
	%>

	<form action="PCS.do" method="post">
		<table border="0" width="100%" bgcolor="#C6DBDA">

			<tr>
				<td colspan="5"><h2><%=s%></h2>
					<hr></td>
				<td><input type="hidden" name="category" value="<%=s%>" /></td>
				<td><input type="hidden" name="userName" value="<%=ob.getUsername()%>" /></td>
				<td><input type="hidden" name="password" value="<%=ob.getPassword()%>" /></td>


				<td><input type="submit" value="view more>" /></td>
			</tr>
			<%
				try {

				Connection con = null;
				Statement stmt = null;
				ResultSet rs = null;
				PreparedStatement preparedStatement = null;
				String url1 = "jdbc:mysql://localhost:3306/mydb";
				String username1 = "root";
				String password1 = "";
				con = DriverManager.getConnection(url1, username1, password1);

				String sql2 = "SELECT * FROM productlist where category=?";
				preparedStatement = connection.prepareStatement(sql2);
				preparedStatement.setString(1, s);
				rs = preparedStatement.executeQuery();
				int count = 0;
			%>

			<%
				while (rs.next() == true && count < 3) {
			%>


			<th><a href="success.jsp"><img src="images/products/<%=rs.getString("imgpath")%>"
				style="height: 200px; width: 300px"> 
				</a>
				<br>
				<h2><%=rs.getString("pname")%></h2>
				<h3>
					MRP=Rs.<%=rs.getInt("MRP")%></h3>
				<h3>
					discount=Rs.<%=rs.getInt("discount")%></h3></th>
			<%
				count++;
			}
			%>

			<%
				} catch (Exception e) {
			e.printStackTrace();
			}
			%>
		</table>
	</form>
	<br>
	<%
		}

	} catch (Exception e) {
	e.printStackTrace();
	}
	%>



</body>
</html>