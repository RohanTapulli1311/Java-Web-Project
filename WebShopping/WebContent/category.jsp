<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category page</title>
<%@include file="Components/common_cs_js.jsp"%>
</head>
<body>
<div id = "prod1">
<div align="center">
<br>
<br>
<br>
<br>
		<h1>Add a category for products here : </h1>
		<form action="CategoryServlet.do" method="post">
			<table>
				<tr>
					<td>CATEGORY:</td>
					<td><input type="text" name="category"></td>
					<br>
					<br>
					<br>
				</tr>
				<tr>
<br>
<br>

					<td><br><br><br><br><br><input type="submit" value="ADD" /></td>
					<td><br><br><br><br><br><input type="reset" value="clear" /></td>
				</tr>


			</table>
			
		</form>
		</div>






	</div>
</body>
</html>