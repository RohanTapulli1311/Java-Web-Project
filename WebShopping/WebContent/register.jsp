<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>register page</title>
<%@include file ="Components/common_cs_js.jsp" %>
<link rel="stylesheet" href = "css/login_signup_css.css">
</head>
<body>
<div id = "reg">
	<div align="center">
		<div id = "reg1">
<h1>Sign up</h1>
<form action="RegisterServlet.do" method="POST">
<table >
<tr>
 <td>First Name:</td>
 <td><input type="text" name="fName" placeholder="Enter your first name"></td>
 </tr>
 
 <tr>
 <td>Last Name:</td>
 <td><input type="text" name="lName" placeholder="Enter your last name"></td>
 </tr>
 
 <tr>
 <td>Email address:</td>
 
 <td><input type="email" name="Email" placeholder="Enter a valid email ID"></td>
</tr>
<br>
<tr>
 <td>Contact number:</td>
 <td><input type="text" name="contact" placeholder="Enter your number"></td>
 </tr>
 
 <tr>
 <td>Select gender:</td>
 <td><input type="radio" name="gender" value=" male">male</input>
<input type="radio" name="gender" value=" female">female</td>
 </tr>
 
  <tr>
 <td>Username:</td>
 <td><input type="text" name="userName" placeholder="Enter your username"></td>
 </tr>
 
<tr>
 <td>Password :</td>
 <td><input type="password" name="cPassword" placeholder="Enter password here"></td>
 </tr> 

<tr>
 <td>Re-Enter password:</td>
 <td><input type="password" name="sPassword" placeholder="Enter the same password "></td>
 </tr>
 
 <tr>
 <td>Sign in as:</td>
 <td>
<input type="radio" name="role" value="Customer">Customer</input>
<input type="radio" name="role" value="Client">Client</input>
<input type="radio" name="role" value="Admin">Admin</input>
</td>
 </tr> 



<tr>

<td><br><br><input type="submit" value="register" /></td>
<td><br><br><input type="reset" value="clear" /></td>
</tr>


</table>
</form>
		</div>
	</div>
</div>
</body>
</html>