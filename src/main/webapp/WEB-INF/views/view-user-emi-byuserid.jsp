<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>customer find emi details</title>
<style>
<%@include file="css/findbyid.css"%>
<%@include file="css/button.css"%>
</style>
</head>
<body>
<button class="button" onclick="history.back()">Go Back</button>
	<form action="/user/getemidetailsbyuserid" method="get">
		<div class="container">
			<div class="brand-title">User & EMI Details</div>
			<div class="inputs">
				<label>Find By User ID</label> <input type="text" name="userId"
					placeholder="enter user Id" />
				<button type="submit">Get Details</button>
				</div>
				</div>
				</form>
</body>
</html>