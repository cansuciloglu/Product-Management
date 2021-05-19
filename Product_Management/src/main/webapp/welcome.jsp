<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style>
body{
text-align:center;}
</style>
</head>
<body>
<%@ include file="header.jsp" %>  
<% String a=request.getParameter("user_id"); %>
<strong><h2>PRODUCT MANAGEMENT SYSTEM</h2></strong><br>
<h3>Welcome <% out.println(a); %></h3>



</body>
</html>