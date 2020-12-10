<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADd Product</title>
<%@include file = "header.jsp" %>

<style type="text/css">
.table {
	margin: auto;
    margin-left: 78px;
    width: 100%;
}
</style>

</head>
<body>
<div class="container">
	<form action = "processAddProduct.jsp" method = "post">
	    <table class="table table-striped table-hover">
	        <thead class = "thead-dark">
	            <tr>
	                <th>ID</th>
	                <th>Product Name</th>
	                <th>Product Price</th>
	                <th>Product Category</th>
	                <th>Add</th>
	            </tr>
	            <tr>
	            	<td><input type = "text" name = "prod_id" id = "prod_id" class = "form-control"></td>
	                <td><input type = "text" name = "prod_name" id = "prod_name" class = "form-control"></td>
	            	<td><input type = "text" name = "prod_price" id = "prod_price" class = "form-control"></td>
	                <td><input type = "text" name = "prod_category" id = "prod_category" class = "form-control"></td>
	                <td>
	                 <button type="submit" class="btn btn-primary btn-md">Add</button>
	                </td>
	            </tr>
	        </thead>
	    </table>
    </form>
</div>

</body>
</html>
