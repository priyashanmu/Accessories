<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" />
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery.min.js'/>" ></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>" ></script>
<style>
body
{
background-image: url("<c:url value='/resources/image/m3.jpg'/>"); ;
  background-repeat: no-repeat; 
background-size:cover; 
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
      <li class="active"><a href="#">Home</a></li>
      <li class="active"><a href="aboutas">About us</a></li>
       <li class="active"><a href="images">Contact</a></li>
        <!-- <li class="active"><a href="Product">Product</a></li>
     <li class="active"><a href="Category">Category</a></li>
     
     <li class="active"><a href="Supplier">Supplier</a></li>
      --> 
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
      <li><a href="fff"><span class="glyphicon glyphicon-user"></span> Signup</a></li>
      <li><a href="index"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
    </ul>
  </div>

</div>
</nav>
  </div>


<center>
<div class="container">
  <div class="jumbotron">
    <h1>Welcome to Admin page</h1>
     <button type="button" class="btn btn-default btn-lg"> <a href="Product">Product</a></button>
  <br><br><br><button type="button" class="btn btn-default btn-lg"><a href="Category">Category</a></button>
  <br><br><br><button type="button" class="btn btn-default btn-lg"><a href="Supplier">Supplier</a></button>
  
  </div>
</center>
</body>
</html>