<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>VIEW LOAN DETAILS AND USER DETAILS</title>
<style>
<%@include file="css/findbyid.css"%>
</style>
</head>
<body>
            	<form action="/user/getloandetailsbyuserid" method="get">
		<div class="container">
			<div class="brand-title">User & Loan Details</div>
			<div class="inputs">
				<label>Find By User ID</label> <input type="text" name="userId"
					placeholder="enter user Id" />
				<button type="submit">Get Details</button>
				</div>
				</div>
				</form>
</body>
</html>