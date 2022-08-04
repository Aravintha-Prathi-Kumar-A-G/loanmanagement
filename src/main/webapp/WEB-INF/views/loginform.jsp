<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<style>
* {
    text-align: center;
}
.center {
    margin-left: auto;
    margin-right: auto;
}
</style>
</head>
<body>
    <h1>Loan Management System</h1>
    <h2>User Login</h2>
    <br>
    <br>
    <form action="adduserform" method="post">
        <table class="center">
            <tr>
                <td>User Id :</td>
                <td><input type="text" name="adminId" /></td>
            </tr>
            <tr>
                <td>User Password :</td>
                <td><input type="password" name="userPassword" /></td>
            </tr>
            <tr>
                <td><input type='submit' value='Login'></td>
   
            </tr>
        </table>
    </form>
                 <br> <center>
    <a href="adduserform">New Register</a>
    </center>
    <br>
</body>
</html>