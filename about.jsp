<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>About</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>">
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"></script>
  
<style>
body
{
background-image: url("<c:url value='/resources/image/j1.jpg'/>");
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
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="earring">Earrings</a></li>
          <li><a href="#">Bangles</a></li>
          <li><a href="#">Bracelet</a></li>
        <li><a href="#">Necklace</a></li>
        <li><a href="#">Rings</a></li>
      </ul>  
</ul>
</li>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="fff"><span class="glyphicon glyphicon-user"></span> Register</a></li>
      <li><a href="f"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</div>
</nav>
  </div>
<center>
<a href="images" class="btn btn-success" role="button">More Images</a>

</center>
</div></br>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <div id="h">
<ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
 <li data-target="#myCarousel" data-slide-to="4"></li>
 </ol>

  <center>
<div class="carousel-inner" role="listbox">
    <div class="item active">
     
 <img src="<c:url value='/resources/image/ww.jpg'/>"  width="304" height="436">
    </div>

    <div class="item">
      <img src="<c:url value='/resources/image/khn.jpg'/>" class="img-thumbnails" width="304" height="236">
    </div>
    <div class="item">
      <img src="<c:url value='/resources/image/fgm.jpg'/>" class="img-thumbnails" width="604" height="336">
    </div>
     <div class="item">
      <img src="<c:url value='/resources/image/jhn.jpg'/>" class="img-thumbnails" width="304" height="236">
    </div>
<!-- Left and right controls -->
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
</center>

</body>
</html>