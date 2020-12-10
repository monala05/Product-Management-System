<%@ page import = "pojo.Product" %>
<%@ page import = "dao.ProductManager"%>
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products page</title>
<%@include  file="header.jsp" %>
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
         List<Product> products = ProductManager.getAllProducts();
         for(Product p: products){
       	 %>
        	<tr>
        		<td><%=p.getProductId() %></td>
                <td><%=p.getProductName() %></td>
                <td>$<%=p.getProductPrice()%></td>
                <td><%=p.getProductCategory()%></td>
                <td><button class = "btn btn-primary" onclick="location.href = 'editProduct.jsp?productId=<%= p.getProductId()%>';">Edit</button></td>
                <td><button class = "btn btn-danger" onclick="location.href = 'processDeleteProduct.jsp?productId=<%= p.getProductId()%>';">Delete</button></td>
                
        	</tr>	
         <% 
         }
         %>
         
         
        </thead>
    </table>
</div>
</body>
</html>