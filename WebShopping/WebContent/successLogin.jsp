<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.crce.login.login"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
login ob=(login)request.getAttribute("login");

%>
<%=ob %>
<h1>Logged in successfully!!</h1>
<h2>welcome <%=ob.getUsername() %></h2>
</body>
</html>