<%@page import ="dao.ProductManager" %>
<%@page import = "pojo.Product" %>

<%
	//Getting paramaters from "editProduct.jsp" to create a Product Object
	int id = Integer.parseInt(request.getParameter("prod_id"));
	String name = request.getParameter("prod_name");
	int price = Integer.parseInt(request.getParameter("prod_price"));
	String category = request.getParameter("prod_category");
	
	Product prod = new Product(id, name, price, category);
	int status = ProductManager.updateProduct(prod);

	
	//Redirect based on wether query is successful or not
	if(status == 1){
		response.sendRedirect("viewProducts.jsp");
	}else{
		response.sendRedirect("error.jsp");
	}

%>