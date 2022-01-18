<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login here</title>
<%@include file ="Components/common_cs_js.jsp" %>
<link rel="stylesheet" href = "css/login_signup_css.css">
</head>
<body>
<div id = "log1">
  <div class = "wrapper">
  <h1>Sign in</h1>
  <form action = "LoginServlet.do" method="post">
  <input type="text" placeholder="userName" name="userName">
  <input type="password" placeholder="password" name="password">
  <input type="submit" value="login" />
  
  </form>
  
  <div class = "bottom-text">
 <a href="register.jsp">Sign up</a><br /> 
			<a href="forgotpassword.jsp">Forgot Password?</a><br /> 
  </div>
  
  </div>
  </div>
	
</body>
</html>