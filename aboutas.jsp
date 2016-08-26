<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>about</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>">
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"></script>
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
<div class="section" id="descr">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section">
              <div class="container">
                <div class="row">
                  <div class="col-md-12 text-center">
                    <h1>Designed To Accessories</h1>
                  </div>
                </div>
                <br>
                <br>
                <div class="row">
                  <div class="col-md-4">
                    <center>
                      <img src="<c:url value='/resources/image/b.jpg'/>" class="img-responsive">
                    </center>
                    <h2 class="text-center">Bangles</h2>
                    <p class="lead text-center">Bangles are rigid bracelets, usually from metal, wood, or plastic. 
They are traditional ornaments worn mostly by South Asianwomen in India,</p>
                  </div>
                  <div class="col-md-4">
                    <center>
                      <img src="<c:url value='/resources/image/lo.jpg'/>" class="img-responsive">
                    </center>
                    <h2 class="text-center">Bracelet</h2>
                    <p class="lead text-center">A bracelet is an article of jewellery that is worn around the wrist.
 It may have a supportive function, such as holding awristwatch </p>
                  </div>
                  <div class="col-md-4 text-center">
                    <center>
                      <img src="<c:url value='/resources/image/r1.jpg'/>" class="img-responsive">
                    </center>
                    <h2>Ring</h2>
                    <p class="lead">A ring is a round band, usually in metal, worn as an ornamental Jewellery around the finger, or sometimes the toe; 
it is the most common current meaning of the word "ring".</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="section">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <hr>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    
</body>
</html>

  
  