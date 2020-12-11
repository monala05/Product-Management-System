<%@page import = "pojo.Product" %>
<%@page import = "dao.ProductManager" %>
<%@page import = "java.util.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <title>Search products page</title>

  <!-- Bootstrap -->
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">


  <script src="https://unpkg.com/feather-icons"></script>

  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }    
  </style>

  <!-- Custom css -->
  <link rel = "stylesheet" href="template.css" >

  </head>
  <body>
  <%
	if(session.getAttribute("email") == null){
		response.sendRedirect("login.jsp");
	}
  %>
  
  
  
  <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#">Company name</a>

    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <ul class="navbar-nav px-3">
      <li class="nav-item text-nowrap">
        <a class="nav-link" href="logout.jsp">Sign out</a>
      </li>
    </ul>
  </nav>

  <div class="container-fluid">
  <div class="row">
  <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
  <div class="sidebar-sticky pt-3">
    <ul class="nav flex-column">
      <li class="nav-item">
        <a class="nav-link " href="home.jsp">
          <span data-feather="home"></span>
          Home 
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="viewProducts.jsp">
          <span data-feather="shopping-cart"></span>
          View Products
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="addProduct.jsp">
          <span data-feather="plus-circle"></span>
          Add Products
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="searchProduct.jsp">
          <span data-feather="search"></span>
          Search Products <span class="sr-only">(current)</span>
        </a>
      </li>
    </ul>
  </div>
  </nav>

  <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
  <div  class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
   <h1 id = "name" class="h2">Search Products</h1>
 	</div>

  </main>
  
<div class="container">
	<form action = "searchProduct.jsp">
		<input class="form-control form-control-dark w-100 table mb-3" name = "prod_id" type="text" placeholder="Search product by ID" aria-label="Search">
    </form>
    <table class="table table-striped table-hover">
        <thead class = "thead-dark">
            <tr>
                <th>ID</th>
                <th>Product Name</th>
                <th>Product Price</th>
                <th>Product Category</th>
                <th colspan = "2">Edit/Delete</th>
            </tr>
	<%
		String productId = request.getParameter("prod_id");
		if(productId != null){ 
			Product p = dao.ProductManager.getProductById(productId);
			List<Product> productNames = ProductManager.getProductByName(productId);
			if(p != null){
	%>			
		<tr>
			<td><%=p.getProductId()%></td>
			<td><%=p.getProductName()%></td>
			<td>$<%=p.getProductPrice()%></td>
			<td><%= p.getProductCategory() %></td>
            <td><button class = "btn btn-primary" onclick="location.href = 'editProduct.jsp?productId=<%= p.getProductId()%>';">Edit</button></td>
            <td><button class = "btn btn-danger" onclick="location.href = 'processDeleteProduct.jsp?productId=<%= p.getProductId()%>';">Delete</button></td>
		</tr>				
	    <%
			}else if(!productNames.isEmpty()){
		         for(Product name: productNames){
		%>
		<tr>
        	<td><%=name.getProductId() %></td>
            <td><%=name.getProductName() %></td>
            <td>$<%=name.getProductPrice()%></td>
            <td><%=name.getProductCategory()%></td>
            <td><button class = "btn btn-primary" onclick="location.href = 'editProduct.jsp?productId=<%= name.getProductId()%>';">Edit</button></td>
            <td><button class = "btn btn-danger" onclick="location.href = 'processDeleteProduct.jsp?productId=<%= name.getProductId()%>';">Delete</button></td> 
        </tr>	
		<%		
		    	}
		         
		   	}else{
		%>
			<tr>
				<td colspan="5">No products found</td>
			</tr>
		<% 
			}
		}
		%>
        </thead>
     </table>
	</div>
  
  </div>
  </div>

  <script>feather.replace()</script>

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </body>
  </html>