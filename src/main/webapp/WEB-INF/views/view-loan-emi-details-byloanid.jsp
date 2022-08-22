<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>VIEW LOAN AND EMI DETAILS</title>
<style>
<%@include file="css/findbyid.css"%>
<%@include file="css/button.css"%>
</style>
</head>
<body>
<button class="button" onclick="history.back()">Go Back</button>
       <form action="/loan/getemidetailsbyloan" method="get">
		<div class="container">
			<div class="brand-title">Loan & EMI Details</div>
			<div class="inputs">
				<label>Find By Loan ID</label> <input type="text" name="loanid"
					placeholder="enter loan Id" />
				<button type="submit">Get Details</button>
				</div>
				</div>
				</form>
            
         
</body>
</html>