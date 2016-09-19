<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring Mvc WebFlow Demo</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>">
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"></script>
 
	 <style>
body
{
background-image: url("<c:url value='/resources/image/m3.jpg'/>");
  background-repeat: no-repeat; 
background-size:cover; 
} 
form
{

width:600px;
background-color:white;
padding:40px;
margin:40px;
}
fieldset
{

width:500px;
/* background-color:pink;
 */padding:40px;
margin:40px;
}

</style> 
</head>

<body data-target=".navbar">
<div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
     <div class="navbar-header">
      <div class="navbar-brand">Women Accessories World</div>
    </div>
     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
     </button>
    
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav navbar-left">
      <li class="active"><a href="index">Home</a></li>
      <li class="active"><a href="aboutas">Abouts</a></li>
      <!-- <li class="active"><a href="Product">Product</a></li>
    -->
       <li class="active"><a href="images">Contact</a></li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="earring">Earrings</a></li>
          <li><a href="bangle">Bangles</a></li>
          <li><a href="bracelet">Bracelet</a></li>
     
        <li><a href="rings">Rings</a></li>
      </ul>  
</ul>
</li>
    <ul class="nav navbar-nav navbar-right">
      
      <li><a href="index"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</div>
</nav>
  </div>
	<fieldset>
  <h2>User Details</h2>
				 <form:form modelAttribute="userBean">
				 
				<div class="form">
      <label for="UserName">UserName:</label>
      <input type="text" class="form-control" name="userName" placeholder="Enter user name">
    </div>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('userName')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<div class="form1">
      <label for="Email">Email:</label>
      <input type="text" class="form-control" name="email" placeholder="Enter the email">
    </div>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('email')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<div class="form2">
      <label for="Password">Password:</label>
      <input type="password" class="form-control" name="password" placeholder="Enter the password">
    </div>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<div class="form2">
      <label for="Conform_Password">Conform Password:</label>
      <input type="password" class="form-control" name="conform_password" placeholder="Enter the password">
    </div>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<input name="_eventId_submit" type="submit" value="Submit" /><br />
				</form:form>
			</fieldset>
		
	</body>
</html>