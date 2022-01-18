<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.crce.category.Category"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category page</title>
<%@include file ="Components/common_cs_js.jsp" %>
</head>
<body>
<%
Category ob=(Category)request.getAttribute("category");

%>
<h1><%=ob.getC_name() %> added successfully!!</h1>
<a href="adminhp.jsp">GO BACK TO ADMINISTRATOR HOME PAGE</a>
</body>
</html>