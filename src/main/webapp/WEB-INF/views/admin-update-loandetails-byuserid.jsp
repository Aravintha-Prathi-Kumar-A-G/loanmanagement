<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN update LOAN DETAILS </title>
<style>
* {
    text-align: center;
}
</style>
</head>
<body>
    <h1>Online Loan Management System</h1>
    <h3> Update Loan Details </h3>
            <form action="/loandetails/updateloandetailsform"  method="get">
                <div>
                    USER ID : <input type="text" name="userid" />
                </div>
                <br>
                <input type="submit" value="submit" />
            </form>
</body>
</html>