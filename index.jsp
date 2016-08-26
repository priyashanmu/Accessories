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
footer {
      background-color: #555;
      color: white;
      padding: 15px;
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
      <li class="active"><a href="aboutas">Abouts</a></li>
       <li class="active"><a href="images">Contact</a></li>
       <li class="active"><a href="product">Product</a></li>
      
  
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
      <li><a href="home"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
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
                    <h1 class="text-center">Welcome To
                      <b>Women Accessories</b>
                    </h1>
                    <p class="lead text-center">Shop our rings, earrings, bangles,bracelets.</p>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-2">
                    <br>
                    <br>
                    <h4>Amazing Results</h4>
                    <p>
 make a great decorative item for personal adornment and come in different forms like  rings, bangles</p>
                    <img src="<c:url value='/resources/image/s1.png'/>" class="img-responsive">
                  </div>
                  <div class="col-md-8">
                    <img src="<c:url value='/resources/image/b1.jpg'/>" class="img-responsive">
                  </div>
                  <div class="col-md-2">
                    <br>
                    <br>
                    <img src="<c:url value='/resources/image/s2.png'/>" class="img-responsive">
                    <h4>Awesome Design</h4>
                    <p>Peora Silver/White Sterling Silver Ring. ... Women’s jewellery.adorning feminine grace... 
</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
<footer class="container-fluid text-center">
  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>
</div>
</body>
</html>