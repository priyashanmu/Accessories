<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<title>LIST</title>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>

<script>
var c=${priya};
   angular.module('myapp',[]).controller('CategoryController',function($scope)
   {
	 
	   $scope.aa=c;
	   
   });
</script>

 </head>
<body>



<div class="container" ng-app="myapp" ng-controller="CategoryController">

<p>Search your category here:</p>

<p><input type="text" class="form-control" placeholder="Search...." ng-model="test"></p>

<table border="2">
			<th>ID</th>
			<th>NAME</th>
			<th>DESCRIPTION</th>
			
			<th>EDIT</th>
			<th>DELETE</th>

			
				<tr ng-repeat="category in aa | filter:test">
					<td>{{category.fid}}</td>
					<td>{{category.name}}</td>
					<td>{{category.desc}}</td>
			
					<td><a href="editcategory?id={{category.fid}}">edit</a></td>
					<td><a href="deleteCategory?id={{category.fid}}">delete</a></td>

				</tr>

		
		</table>


</body>
</html>