<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.crce.product.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PRODUCT ADDED</title>
<%@include file="Components/common_cs_js.jsp"%>
</head>
<body>
<%
Product r=(Product)request.getAttribute("product");

%>
<h1 align=center>Product <%=r.getPname() %> added successfully!</h1>
<a href="clienthp.jsp">GO BACK TO CLIENT PAGE</a>
</body>
</html>