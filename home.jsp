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
</head>
<style>
#women
      {
        background-color: #34495E;
        color:white;
      }

</style>
</head>
<body data-target=".navbar">
<div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
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
       
       <li class="active"><a href="Product">Product</a></li>
      
  
      
</ul>
</li>
    <ul class="nav navbar-nav navbar-right">
     
      <li><a href="f"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</div>
</nav>
  </div>
<div class="section" id="women">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section">
              <div class="container">
                <div class="row">
                  <div class="col-md-12 text-center">
                    <h1 class="text-center">
                      <b>Women Accessories</b>
                    </h1>
                    <p class="lead text-center">Shop our rings, earrings, bangles,bracelets.</p>
                  </div>
                </div>
               <div class="row">
               <div class="col-md-8">
                    <img src="<c:url value='/resources/image/kl.jpg'/>" class="img-responsive">
                  </div>  
</div>
</body>
</html>