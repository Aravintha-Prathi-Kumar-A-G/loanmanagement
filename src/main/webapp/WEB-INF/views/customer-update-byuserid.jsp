<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>customer update  details</title>
<style>
* {
    text-align: center;
}
</style>
</head>
<body>
    <h1>Online Loan Management System</h1>
    <h3> Userdetails Update</h3>
            <form action="/user/updateuserform"  method="get">
                <div>
                    User ID : <input type="text" name="userid" />
                </div>
                <br>
                <input type="submit" value="submit" />
            </form>
</body>
</html>