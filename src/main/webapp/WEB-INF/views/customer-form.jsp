<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer Signed in Form</title>
<style>
*{
text-align: center;
}
</style>
</head>
<body>

    <h1>Online Loan Management System</h1>
    <h2>Customer Page</h2>
    <br>
    <br>
    
    <a href="/loan/addloanform">New Loan Request</a>
    <br>
    <a href="/loandetails/addloandetailsform">Apply Loan Details</a>
    <br>
    <a href="/user/viewLoanDetailsanduserdetails">View Loan Details By User ID</a>
    <br>
    <a href="/user/updateuserdetails">Update Customer Details</a>
    <br>
    <a href="/emi/addemidetailsform?id=${userId}">Pay EMI </a>
    <br>
    <a href="/user/viewformuserandemidetails">View Loan EMI Details By User ID</a>
    <br>
</body>
</html>