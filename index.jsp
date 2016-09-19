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
        background-color: white;
        color:black;
      }
/* footer {
      background-color: #555;
      color: white;
      padding: 15px;
    } */
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
       <li class="active"><a href="index2">Web</a></li>
      
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
      <li><a href="memberShip"><span class="glyphicon glyphicon-user"></span> Signup</a></li>
      <li><a href="f"><span class="glyphicon glyphicon-user"></span> Login</a></li>
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
                  <div class="col-md-2">
                    <br>
                    <br>
                    <h4>Awesome Design</h4>
                    <p>
 make a great decorative item for personal adornment and come in different forms like  rings, bangles</p>
                   <br> <img src="<c:url value='/resources/image/s1.png'/>" class="img-responsive">
                  </div>
                  <div class="col-md-8">
                    <img src="<c:url value='/resources/image/let8.jpg'/>" width="764" height="506" >
                  </div>
                  <div class="col-md-2">
                    <br><br><br><br>
                  
                    <img src="<c:url value='/resources/image/s2.png'/>" class="img-responsive">
                    <h4>Awesome Collections</h4>
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
    
    <div class="section" id="show">
      <div class="container">
    <h1>More collections</h1>
    <div id="products" class="row list-group">
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img src="<c:url value='/resources/image/ear9.jpg'/>" class="img-thumbnails"  width="304" height="236">
                    
 <div class="caption">
                     <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                $200.000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success"#">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="products" class="row list-group">
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img src="<c:url value='/resources/image/ear11.jpg'/>" class="img-thumbnails"  width="304" height="356">
                    
 <div class="caption">
                     <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                $250.000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success"#">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="products" class="row list-group">
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img src="<c:url value='/resources/image/ear5.jpg'/>" class="img-thumbnails"  width="304" height="236">
                    
 <div class="caption">
                     <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                $280.000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success"#">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="products" class="row list-group">
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img src="<c:url value='/resources/image/let8.jpg'/>" class="img-thumbnails"  width="304" height="236">
                    
 <div class="caption">
                     <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                $220.000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success"#">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="products" class="row list-group">
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img src="<c:url value='/resources/image/ban10.jpg'/>" class="img-thumbnails"  width="304" height="236">
                    
 <div class="caption">
                     <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                $250.000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success"#">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="products" class="row list-group">
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img src="<c:url value='/resources/image/rin7.jpg'/>" class="img-thumbnails"  width="304" height="236">
                    
 <div class="caption">
                     <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                $100.000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success"#">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
  <div class="row">
  <hr>
    <div class="col-lg-12">
      <div class="col-md-8">
        <a href="#">Terms of Service</a> | <a href="#">Privacy</a>    
      </div>
      <div class="col-md-4">
        <p class="muted pull-right">© 2016 Web site Name. Women Accessories</p>
      </div>
    </div>
  </div>
</div>
</div>
        
        

</body>
</html>