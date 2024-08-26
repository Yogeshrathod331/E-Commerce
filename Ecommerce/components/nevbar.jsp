<%@page import="com.myCart.User" %>

<%

User user1=(User)session.getAttribute("current-user");

System.out.println("navbar data is"+ user1);


%>




<nav class="navbar navbar-expand-lg navbar-dark bg-info">
  <div class="container">
  <a class="navbar-brand" href="#">E-commerce</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="about.jsp">About Us <span class="sr-only">(current)</span></a>
      </li>
     <li class="nav-item active">
        <a class="nav-link" href="contact.jsp">Contact Us <span class="sr-only">(current)</span></a>
      </li>
    
    </ul>
    
   
    <ul class="navbar-nav ml-auto">
    
     <%
    if(user1==null){ %>
    	
    	   <li>
    	     <a class="nav-link" href="register.jsp">Register</a>
    	    </li>
    	    
    	     <li>
    	     <a class="nav-link" href="login.jsp">Login</a>
    	    </li> 
    	
  <%  }else{%>
  
  
 		 <li>
    	     <a class="nav-link" href="#!"><%= user1.getUserName() %></a>
    	    </li>
    	    
    	     <li>
    	     <a class="nav-link" href="login.jsp">Logout</a>
    	    </li> 
    	    
    	  
  
 <%  }%>
    
    
   
 
    </ul>
   
  </div>
  
  
  </div>
</nav>