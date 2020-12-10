
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!--<meta charset="ISO-8859-1">-->
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Login Form</title>
  </head>
  <body>
  

    <div class = "text-center mt-5">
      <form action = "processLogin.jsp"  method = "post" style = "max-width:580px; margin:auto;">
        <img src ="icon.png" class = "mt-5 mb-3"  height="72" alt = "Product page">
        <h1 class = "font-weight-normal"> Product Management System</h1>
        <h1 class = "h3 mb-3 font-weight-normal">Please sign in</h1>
        <label for="emailAddress" class = "sr-only">Email address</label>
        <input type = "email" name = "email" id = "email" class = "form-control" placeholder="Email Address" required autofocus>
        <label for="password" class = "sr-only">Password</label>
        <input type = "password" name = "password" id = "password" class = "form-control" placeholder="password">
        <div class = "mt-3">
          <label>
              <input type = "checkbox" value = "remember-me"> Remember me
          </label>
        </div>
        <div class  ="mt-3">
          <button class = "btn btn-lg btn-primary btn-block">Sign in</button>
        </div>
      </form>
    </div>

  </body>
</html>