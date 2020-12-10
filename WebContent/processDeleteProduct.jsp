<%@page import ="dao.ProductManager" %>
<%@page import = "pojo.Product" %>

<%
	String id = request.getParameter("productId");
	int status = ProductManager.deleteProduct(id);
	
	if(status == 1){
		response.sendRedirect("viewProducts.jsp");
	}else{
		response.sendRedirect("error.jsp");
	}

%>