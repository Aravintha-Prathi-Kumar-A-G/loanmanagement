<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Loan Management Index</title>
</head>
<body>
<div><h1>User Login</h1></div>
<div><a href="/user/adduserform">Add New User</a></div>
<div><a href="/user/updateuserform?userid=">Update User Form</a></div>
<div><a href="/user/finduserbyid?userid=">Find User By Id</a></div>
<div><a href="/user/deleteuserbyid?userid=">Delete User By Id</a></div>
<div><a href="/user/getallusers">Get All Users</a></div>
<div><a href="/user/getloandetailsbyuserid?userid=">Get Loan Details By User Id </a></div>
<div><a href="/user/getemidetailsbyuserid?userid=">Get EMI Details By User Id</a></div>

<div><h1>Loan Details</h1></div>
<div><a href="/loandetails/addloandetailsform">Add New Loan Details</a></div>
<div><a href="/loandetails/updateloandetailsform?userid=">Update Loan details By User id</a></div>
<div><a href="/loandetails/deleteloandetails/userid=">Delete Loan Details By User Id</a></div>
<div><a href="/loandetails/findloandetailsbyid?userid=">Find Loan Details By User Id</a></div>
<div><a href="/loandetails/getallloandetails">Get All Loan Details</a></div>

<div><h1>Loan</h1></div>
<div><a href="/loan/addloanform">Add New Loan</a></div>
<div><a href="/loan/updateloan?loanid=">Update Loan By loan Id </a></div>
<div><a href="/loan/deleteloan?loanid=">Delete loan By loan Id </a></div>
<div><a href="/loan/findloanbyid?loanid=">Find Loan By Loan Id</a></div>
<div><a href="/loan/getallloan">Get All Loan</a></div>
<div><a href="/loan/getloandetailsbyloan?loanid=">Get All Loan Details By loan id</a></div>
<div><a href="/loan/getemidetailsbyloan?loanid=">Get All Loan EMI Details By Loan id</a></div>

<div><h1>Loan EMI Details</h1></div>
<div><a href="/emi/addemidetailsform">Add New LOAN EMI Details</a></div>
<div><a href="/emi/updateemidetailsform?userid=">Update Loan EMI Details By user id </a></div>
<div><a href="/emi/deleteemidetails?userid=">Delete Loan EMI Details By User Id</a></div>
<div><a href="/emi/findemidetailsbyid?userid=">Find By Loan EMI Details By user Id</a></div>
<div><a href="/emi/getallloanemidetails">Get All Loan EMI Details</a></div>


</body>
</html>