<%@page import= "pojo.LoginInfo" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<%@include  file="header.jsp" %>
</head>
<body>

	<%
	String user = (String)session.getAttribute("email");
	%>
	<div class = "text-center">
		<h1>"Company" Product Management System</h1>
		<label>Welcome <%=user%> </label>
	</div>
</body>
</html>