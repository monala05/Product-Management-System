<%@page import ="dao.ProductManager" %>
<%@page import = "pojo.Product" %>

<% 	
	int id = Integer.parseInt(request.getParameter("prod_id"));
	String name = request.getParameter("prod_name");
	int price = Integer.parseInt(request.getParameter("prod_price"));
	String category = request.getParameter("prod_category");
	
	Product pro = new Product(id,name,price,category);
	
	int status = ProductManager.addProduct(pro);
	
	if(status == 1){
		response.sendRedirect("viewProducts.jsp");
	}else{
		response.sendRedirect("error.jsp");
	}
	
%>