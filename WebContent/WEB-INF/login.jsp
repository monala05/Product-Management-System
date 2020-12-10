<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
 <link
    rel = "stylesheet"
    href = "https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
  />
</head>
<body>
	<div style = "align: center">
	<form method = "post" action = "processLogin.jsp">
			<table>
				<tr>
					<th><label>Product Management login</label></th>
				</tr>
				<tr>
					<td><label for = "userName">User Name</label></td>
					<td><input type = "text" name = "userName" id = "userName"></td>

				</tr>

				<tr>
					<td>Password<label for = "password"></label></td>
					<td><input type = "text" name = "password" id = "password"></td>
				</tr>
				<tr>
					<td><input type = "submit"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
