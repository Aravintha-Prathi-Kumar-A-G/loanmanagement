<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>customer find emi details</title>
<style>
* {
    text-align: center;
}
</style>
</head>
<body>
    <h1>Online Loan Management System</h1>
    <h3>view userdetails with emi details</h3>
            <form action="getemidetailsbyuserid"  method="get">
                <div>
                    User ID : <input type="text" name="userId" />
                </div>
                <br>
                <input type="submit" value="find emi details" />
            </form>
</body>
</html>