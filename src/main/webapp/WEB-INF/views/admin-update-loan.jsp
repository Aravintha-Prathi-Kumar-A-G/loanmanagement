<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> update LOAN TYPE details</title>
<style>
* {
    text-align: center;
}
</style>
</head>
<body>
    <h1>Online Loan Management System</h1>
    <h3> Update Loan Type </h3>
            <form action="/loan/updateloan"  method="get">
                <div>
                    Loan ID : <input type="text" name="loanid" />
                </div>
                <br>
                <input type="submit" value="submit" />
            </form>
</body>
</html>