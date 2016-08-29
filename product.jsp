<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>PRODUCT DETAIL</title>

</head>
<body>
	<form:form action="./addProd" commandName="prod" method="post">
		
	
		<tr>
			<td>Product Name</td>
			<td><form:input path="name" /></td>
		</tr>
		<br>
		<tr>
			<td>Product Description</td>
			<td><form:input path="desc" /></td>
		</tr>
		<br>
		<tr>
			<td>Product Price</td>
			<td><form:input path="price" /></td>
		</tr>
		<br>
		<tr>
			<td colspan="2"><input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" /> 
				<input type="submit" name="action" value="Delete" />
				 <input type="submit" name="action" value="Search" /> </td>
		</tr>
		</form:form>
		<br>
		<table border="2">
			<th>ID</th>
			<th>NAME</th>
			<th>DESCRIPTION</th>
			<th>EDIT</th>
			<th>DELETE</th>

			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.pid}</td>
					<td>${product.name}</td>
					<td>${product.desc}</td>
					<td>${product.price}</td>
					<td><a href="editProd?id=${product.pid}">Edit</a></td>
					<td><a href="delProd?id=${product.pid}">Delete</a></td>




				</tr>

			</c:forEach>
		</table>

	
</body>
</html>