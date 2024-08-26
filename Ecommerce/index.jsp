
<%@page import="com.myCart.Categories"%>
<%@page import="java.util.List"%>
<%@page import="com.myCart.CategoryDao"%>
<%@page import="com.myCart.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home_Page</title>
<%@include file="components/common_css_js.jsp"%>
<%@include file="components/nevbar.jsp"%>
</head>
<body>

<div class="row mt-3 mx-3">
	
		<%
		CategoryDao dao=new CategoryDao();
		 List<Product> list =dao.getAllProduct();
		 List<Categories> catlist =dao.getCategory();
		
		%>


		<!-- for category -->
		<div class="col-md-2">
		
			
		<div class="list-group">
		  <a href="#" class="list-group-item list-group-item-action active bg-info">
		    Categories
		  </a>
		  	<%
		
		for(Categories c:catlist){%>
		
		  <a href="#" class="list-group-item list-group-item-action"><%= c.getCategoryName() %></a>
		  
		<%} %>
		</div>
		
		
		</div>
		
		
		
		<!-- for product -->
		
		<div class="col-md-8">
			<div class="row-mt-4">
		
			<div class="col-md-12">
		<% for(Product p:list){ %>
				<div class="card-columns-md-4-mt-2">

				

						<div class="card">
					  <img class="card-img-right" src="..." alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title"><%= p.getpNeme() %></h5>
								<p class="card-text"><%= p.getpDesc() %></p>
								<h6 class="card-title"><%= p.getpPrice() %> Rs.</h6>
								<a href="buy.jsp" class="btn btn-primary bg-info">Buy now</a>
							</div>
						</div>
						
						

					</div><% }%>
		
		</div>
		
		</div>
		
		</div>


</div>






		<!--product Modal -->





</body>
</html>