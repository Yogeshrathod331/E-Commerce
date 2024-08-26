<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="components/common_css_js.jsp"%>
<%@include file="components/nevbar.jsp"%>
</head>
<body>


		<div class="container-fluid">

	<div class="row mt-3">
		<div class="col-md-4 offset-md-4">
		
		<div class="card">
		<%@include file="components/message.jsp" %>
		
		<div class="card-body my-">
		<h2>Register here!!</h2>
		
		<form action="RegisterServlet">
			<div class="form-group">
				<label for="name">User Name</label> 
				<input name="user_name" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter name">
			</div>
			
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> 
				<input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
			</div>
			
			<div class="form-group">
				<label for="phone">Phone</label> 
				<input name="user_phone" type="number" class="form-control" id="phone" aria-describedby="emailHelp" placeholder="Enter phone number">
			</div>
			
			<div class="form-group">
				<label for="password">Password</label> 
				<input name="user_password" type="password" class="form-control" id="password" aria-describedby="emailHelp" placeholder="Enter password">
			</div>
			
			
			<div class="form-group">
				<label for="address">Address</label> 
				<textarea name="user_address" type="text" class="form-control"  placeholder="Enter address"></textarea>
			</div>
			
			<div class="mb-3">
		      <label for="Select" class="form-label">Select Quantity</label>
		      <select name="user_type" id="Select" class="form-control">
		        <option>1 </option>
		        <option>2</option>
		         <option>3</option>
		      </select>
		    </div>
			
			<div class="container text-center">
			
			<button type="submit" class="btn btn-info">Buy</button>
			<button type="reset" class="btn btn-info">Reset</button>
			
			</div>
			
			<div class="container text-center mt-3">
			<a href="login.jsp"> Go back</a>
				
			</div>
			

		</form>
		
		</div>
		</div>
		
	</div>
	</div>


	</div>


</body>
</html>