<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="com.crce.category.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="Components/common_cs_js.jsp"%>
<link rel="stylesheet" href="css/Common_css.css">
</head>
<body>
	<h1>VIEW PRODUCTS</h1>

	<div class="container" align="center">
		<div class="row mt-5">

			<div class="col-md-6">
				<%
					Category ob = (Category) request.getAttribute("category");
				    
				try {
					Connection connection = null;
					Statement statement = null;
					ResultSet rs = null;
					PreparedStatement preparedStatement = null;
					String url = "jdbc:mysql://localhost:3306/mydb";
					String username = "root";
					String password = "";
					connection = DriverManager.getConnection(url, username, password);
					String sql = "SELECT * FROM productlist where category = ?";
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1, ob.getC_name());
					rs = preparedStatement.executeQuery();

					while (rs.next()) {
				%>

				<div class="card">
					<div class="card-body text-center">
						<h2><%=rs.getString("pname")%></h2>
						<h2>
							<a href="success.jsp"><img
								src="images/products/<%=rs.getString("imgpath")%>" alt="photo">
							</a>
						</h2>

						<h3>
							Quantity=<%=rs.getInt("Quantity")%></h3>
						<h3>
							Description<br>
							<textarea style="height: 100; width: 200px;"><%=rs.getString("description")%></textarea>
						</h3>
						<h3>
							MRP=<%=rs.getInt("MRP")%></h3>
						<h3>
							discount=<%=rs.getInt("discount")%></h3>

						</form>

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