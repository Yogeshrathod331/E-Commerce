
<%@page import="com.myCart.Categories"%>
<%@page import="com.myCart.CategoryServlet"%>
<%@page import="com.myCart.User" %>
<%@page import="com.myCart.CategoryDao" %>
<%@page import="java.util.List" %>

<%

User user=(User)session.getAttribute("current-user");

if(user==null){
	
	session.setAttribute("message","you are not logged in");
	response.sendRedirect("login.jsp");
	return;
}else{
	
	if(user.getUserType().equals("Normal")){
		
		session.setAttribute("message","you are not Admin");
		response.sendRedirect("index.jsp");
		return;	
	}
	
}


%>


  
		  
		    




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Panal</title>
<%@include file="components/common_css_js.jsp"%>
<%@include file="components/nevbar.jsp"%>
</head>
<body>


	<div class="container admin">

		<div class="row mt-3">
		
			<div class="col-md-4">
			<div class="card">
			<div class="card text-center">
			<div class="container mt-3">
			<img style="max-width:125px;"  class="img-fluid" alt="users_icon" src="img\group.png">
			</div>
			<h1>12</h1>
			<h1>Users</h1>
			</div>
			</div>
			</div>
			
			<div class="col-md-4">
			<div class="card">
			<div class="card text-center">
			<div class="container mt-3">
			<img style="max-width:125px;"  class="img-fluid" alt="users_icon" src="img\categories.png">
			</div>
			<h1>12</h1>
			<h1>Categories</h1>
			</div>
			</div>
			</div>
			
			
			<div class="col-md-4">
			<div class="card">
			<div class="card text-center">
			<div class="container mt-3">
			<img style="max-width:125px;"  class="img-fluid" alt="users_icon" src="img\online-shopping.png">
			</div>
			<h1>12</h1>
			<h1>Products</h1>
			</div>
			</div>
			</div>

		</div>
		
		<div class="row mt-3" >
			
			<div class="col-md-6">
			<div class="card" data-toggle="modal" data-target="#AddCategryModal">
			<div class="card text-center">
			<div class="container mt-3">
			<img style="max-width:125px;"  class="img-fluid" alt="users_icon" src="img\add-categories.png">
			</div>
			<h6>click here to add categories</h6>
			<h1>Add Categories</h1>
			</div>
			</div>
			</div>
			
			
			<div class="col-md-6">
			<div class="card" data-toggle="modal" data-target="#AddProduct">
			<div class="card text-center">
			<div class="container mt-3">
			<img style="max-width:125px;"  class="img-fluid" alt="users_icon" src="img\add-product.png">
			</div>
			<h6>click here to add products</h6>
			<h1>Add Products</h1>
			</div>
			</div>
			</div>

		
		
</div>


	</div>


	<!-- Button trigger modal -->
	

	<!--category Modal -->
	<div class="modal fade" id="AddCategryModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog model-lg" role="document">
			<div class="modal-content ">
				<div class="modal-header custom-bg">
					<h5 class="modal-title" id="exampleModalLabel">Fill Categories Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				
				<form action="CategoryServlet" method="post" >
				
				<input type="hidden" name="operation" value="addcategory">
				
				<div class="form-group">
				
				<input name="category_name" type="text" class="form-control" id="categorytitle" placeholder="Enter category name" required>
				</div>
				<div class="form-group">
				
				<textarea name="category_desc" type="text" class="form-control" id="categoryDesc" placeholder="Enter category description" required ></textarea>
				</div>
				
				<div class="container text-center">
				
				<button type="submit" class="btn btn-info">Add Category</button>
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				
				
				</div>
					
				
				</form>
				
				
				</div>
				
			</div>
		</div>
	</div>
	
	
	
	<!--product Modal -->
	<div class="modal fade" id="AddProduct" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog model-lg" role="document">
			<div class="modal-content ">
				<div class="modal-header custom-bg">
					<h5 class="modal-title" id="exampleModalLabel">Fill Product Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				
				<form action="CategoryServlet" method="post"  enctype="multipart/form-data">
				
				<input type="hidden" name="operation" value="addproduct">
				
				<div class="form-group">
				
				<input name="product_name" type="text" class="form-control" id="productname" placeholder="Enter product name" required>
				</div>
				
				<div class="form-group">
				
				<textarea name="product_desc" type="text" class="form-control" id="productdesc" placeholder="Enter product description" required></textarea>
				</div>
				
				
				<div class="form-group">
				
				<input name="product_qty" type="text" class="form-control" id="productqty" placeholder="Enter product quantity" required >
				</div>
				
				<div class="form-group">
				
				<input name="product_price" type="text" class="form-control" id="productprice" placeholder="Enter product price" required >
				</div>
				
				<%
			
				//Add product
			  
				CategoryDao cdao=new CategoryDao();
				List<Categories> list=cdao.getCategory();
				
				%>
				
				<div class="form-group">
				<select name="catId" class="form-control"  id="cid">
				<% for(Categories c:list){ %>
				<option value="<%= c.getCategoryId() %>"><%= c.getCategoryName() %></option>
				<%} %>
				</select>
				</div>
				
				
				<div class="form-group">
				<label for="picid">Select picture of product</label>
				<input name="product_pic" type="file" id="picid" required >
				</div>
				
				<div class="container text-center">
				
				<button type="submit" class="btn btn-info">Add Product</button>
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				
				
				</div>
					
				
				</form>
				
				
				</div>
				
			</div>
		</div>
	</div>



</body>
</html>