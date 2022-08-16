<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>VIEW LOAN AND EMI DETAILS</title>
<style>
* {
    text-align: center;
}
</style>
</head>
<body>
    <h1> Loan Management System</h1>
    <h3>VIEW LOAN AND EMI DETAILS BY LOAN ID</h3>
            <form action="/loan/getemidetailsbyloan"  method="get">
                <div>
                   LOAN ID : <input type="text" name="loanid" />
                </div>
                <br>
                <input type="submit" value="GET" />
            </form>
</body>
</html>