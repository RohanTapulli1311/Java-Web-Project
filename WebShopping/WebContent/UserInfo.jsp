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
<meta charset="utf-8">
    <title>Profile</title>
    <style>
    .head
{
  font-size: 3.5vw;
  background-color: #CC3000;
  padding-top: 5vh;
  padding-bottom: 5vh;
  text-align: center;
  font-family: Kanit;
  color: white;
}

.card
{
  align-content: center;
}

#email
{
  font-size: 3.8vh;
  font-family: Roboto Slab;
  text-align: center;
  font-weight: bold;
}

#email a
{
  font-size: 3vh;
  font-family: Catamaran;
  text-align: center;
}
    </style>
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Work+Sans:ital,wght@1,300&display=swap');
</style>
<style>
@import url('https://fonts.googleapis.com/css2?family=Kanit&display=swap');
</style>
<style>
@import url('https://fonts.googleapis.com/css2?family=Catamaran:wght@300&family=Kanit&display=swap');
</style>
</head>
<body style="background-color:#EBEBEB;">
	<h1></h1>

	<div class="container" align="center">
		<div class="row mt-5">

			<div class="col-md-6">
				<%
			 String userName=request.getParameter("userName");
				String passWord=request.getParameter("password");
				try {
					Connection connection = null;
					Statement statement = null;
					ResultSet rs = null;
					PreparedStatement preparedStatement = null;
					String url = "jdbc:mysql://localhost:3306/mydb";
					String username = "root";
					String password = "";
					connection = DriverManager.getConnection(url, username, password);
					String sql = "SELECT * FROM clientregister where userName = ?";
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1, userName);
					rs = preparedStatement.executeQuery();

					while (rs.next()) {
				%>
<div>
      <h1 class="head">Profile</h1>
    </div>
    

    <div class="card">


						<h2 style=" text-align:center; font-size:5vh; font-family:Work sans ">
							WELCOME
							<%=rs.getString("fName")%> <%=rs.getString("lName")%> !
							</h2>

						<h2 style="text-align:center; position:relative; top:3vh; font-family:Kanit; ">YOUR DETAILS:</h2>

						<div style="position:absolute; top:55vh; left:39vw;">
						<div id="email">EMAIL: <a><%=rs.getString("email")%></a> </div>
						</div>

						<div style="position:absolute; top:65vh; left:39vw;">
						<div id="email">GENDER:<a><%=rs.getString("gender")%></a></div>
						</div>

							<div style="position:absolute; top:75vh; left:39vw;">
						<div id="email">CONTACT:<a><%=rs.getString("contact")%></a></div>
							</div>


					</div>
				
				<%
					}

				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
<form action="CartServlet.do" method="post">
<td><input type="hidden" name="userName" value="<%=userName%>" /></td>
<td><input type="hidden" name="password" value="<%=passWord%>" /></td>

	<input type="submit" style="position:absolute;top:80vh;left:45.5vw;" value="GO TO YOUR CART" /></td>
	</form>
<form action="LoginServlet.do" method="post">
<td><input type="hidden" name="userName" value="<%=userName%>" /></td>
<td><input type="hidden" name="password" value="<%=passWord%>" /></td>

	<input type="submit" style="position:absolute;top:83vh;left:45.5vw" value="GO BACK TO HOME PAGE" /></td>
	</form>
			</div>
		</div>
	</div>
</body>
</html>