<%@page import = "dao.Login"%>
<%@page import = "DBUtil.ConnectionManager"%>
<%@page import = "pojo.LoginInfo" %>
<%@page import = "java.sql.*" %>

<%

//Create a connection and a LoginInfo object with the paramaters from the login.jsp page
String userName = request.getParameter("email");
String password = request.getParameter("password");
LoginInfo login = new LoginInfo(userName, password);


if(Login.processLogin(login)){
	session.setAttribute("email", userName);
	session.setMaxInactiveInterval(600); 
	response.sendRedirect("home.jsp");
}else{
	response.sendRedirect("loginError.jsp");
}

%>