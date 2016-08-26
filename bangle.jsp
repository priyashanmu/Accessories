<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <title>earrings</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>">
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"></script>
  
  </head>
  <style>
body
{
background-image: url("<c:url value='/resources/image/m3.jpg'/>");
  background-repeat: no-repeat; 
background-size:cover; 
}
</style>
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
      <li class="active"><a href="index">Home</a></li>
      <li class="active"><a href="aboutas">Abouts</a></li>
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
      <li><a href="fff"><span class="glyphicon glyphicon-user"></span> Signup</a></li>
      <li><a href="home"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</div>
</nav>
  </div>
<div class="section" id="show">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1 class="text-center">Bangles</h1>
            <br>
            <div class="container">
              <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <div id="h">
<ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

  <center>
<div class="carousel-inner" role="listbox">
    <div class="item active">
     
 <img src="<c:url value='/resources/image/b.jpg'/>"  width="504" height="436">
    </div>

    <div class="item">
      <img src="<c:url value='/resources/image/a6.jpg'/>" width="504" height="236">
    </div>
    <div class="item">
      <img src="<c:url value='/resources/image/jhn.jpg'/>" width="604" height="336">
    </div>
     

  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
       </div>
            </div>
          </div>
        </div>
      </div>
    </div>
<div class="section" id="show">
      <div class="container">
<img src="<c:url value='/resources/image/j4.jpg'/>" class="img-thumbnails" width="304" height="236">&nbsp&nbsp&nbsp&nbsp
<img src="<c:url value='/resources/image/j4.jpg'/>" class="img-thumbnails" width="304" height="236">&nbsp&nbsp&nbsp&nbsp
<img src="<c:url value='/resources/image/j4.jpg'/>" class="img-thumbnails" width="304" height="236">&nbsp&nbsp&nbsp&nbsp
<img src="<c:url value='/resources/image/j4.jpg'/>" class="img-thumbnails" width="304" height="236">&nbsp&nbsp&nbsp&nbsp
<img src="<c:url value='/resources/image/j4.jpg'/>" class="img-thumbnails" width="304" height="236">&nbsp&nbsp&nbsp&nbsp
<img src="<c:url value='/resources/image/j4.jpg'/>" class="img-thumbnails" width="304" height="236">&nbsp&nbsp&nbsp&nbsp
<img src="<c:url value='/resources/image/j4.jpg'/>" class="img-thumbnails" width="304" height="236">&nbsp&nbsp&nbsp&nbsp
<img src="<c:url value='/resources/image/j4.jpg'/>" class="img-thumbnails" width="304" height="236">&nbsp&nbsp&nbsp&nbsp

</div>
</div>

</body>
</html>
  