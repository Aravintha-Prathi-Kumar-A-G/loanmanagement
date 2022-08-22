<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>ADMIN update LOAN DETAILS </title>
<style>
<%@include file="css/findbyid.css"%>
<%@include file="css/button.css"%>
</style>
</head>
<body>
<button class="button" onclick="history.back()">Go Back</button>
            <form action="/loandetails/updateloandetailsform"  method="get">
		<div class="container">
			<div class="brand-title">Update Loan Details</div>
			<div class="inputs">
				<label>Find By User ID</label> <input type="text" name="userid"
					placeholder="enter user Id" />
				<button type="submit">Update Details</button>
				</div>
				</div>
				</form>
            
</body>
</html>