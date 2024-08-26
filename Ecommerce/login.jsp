
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<%@include file="components/common_css_js.jsp"%>
<%@include file="components/nevbar.jsp"%>
</head>
<body>
<div class="container-fluid">

	<div class="row mt-3">
		<div class="col-md-4 offset-md-4">
		
		<div class="card">
			
			
		<div class="card-body my-4">
		
	
		
		<form action="LginServlet">
		
		
		<h2>Login here!!</h2>
			
			
			<div class="form-group mt-3">
				<label for="exampleInputEmail1 ">Email address</label> 
				<input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
			</div>
			
		
			
			<div class="form-group">
				<label for="password">Password</label> 
				<input name="user_password" type="password" class="form-control" id="password" aria-describedby="emailHelp" placeholder="Enter password">
			</div>
			
			
			<a href="register.jsp"> New user? Register here!</a>
			
			<div class="container text-center mt-3">
			
			<button class="btn btn-info">Login</button>
			
			</div>

		</form>
		
		</div>
		</div>
		
	</div>
	</div>


	</div>

</body>
</html>