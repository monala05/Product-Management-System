<%@page import = "pojo.Product" %>
<%@page import = "dao.ProductManager" %>
<%@page import = "java.util.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Product</title>

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




</body>
</html>