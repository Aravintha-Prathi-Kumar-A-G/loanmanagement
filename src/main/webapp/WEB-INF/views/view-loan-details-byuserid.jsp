<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>VIEW LOAN DETAILS AND USER DETAILS</title>
<style>
* {
    text-align: center;
}
</style>
</head>
<body>
    <h1>Online Loan Management System</h1>
    <h3>VIEW LOAN DETAILS AND USER DETAILS</h3>
            <form action="/user/getloandetailsbyuserid"  method="get">
                <div>
                    User ID : <input type="text" name="userId" />
                </div>
                <br>
                <input type="submit" value="submit" />
            </form>
</body>
</html>