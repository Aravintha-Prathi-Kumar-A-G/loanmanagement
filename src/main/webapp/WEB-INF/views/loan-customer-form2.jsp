<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer Page</title>
<style type="text/css">
<%@include file="css/customer-navbar.css"%>
</style>
</head>
<body>
<div>
 <nav>
        <div id="logo">LOAN MANAGEMENT SYSTEM</div>

        <label for="drop" class="toggle">Menu</label>
        <input type="checkbox" id="drop" />
            <ul class="menu">
                <li><a href="/home/loanmanagementhomepage">Home</a></li>
                <li>
                    <!-- First Tier Drop Down -->
                    <label for="drop-1" class="toggle">Loan +</label>
                    <a href="#">Loan</a>
                    <input type="checkbox" id="drop-1"/>
                    <ul>
                        <li><a href="/loan/addloanform?userId=${userId}">Add New Loan Request</a></li>
                        <li><a href="/loandetails/addloandetailsform">Apply Loan</a></li>
                        <li><a href="/user/updateuserform?userId=${userId}">Update Customer Details</a></li>
                    </ul> 

                </li>
                <li>

                <!-- First Tier Drop Down -->
                <label for="drop-2" class="toggle">View +</label>
                <a href="#">View</a>
                <input type="checkbox" id="drop-2"/>
                <ul>
                    <li><a href="/user/getloandetailsbyuserid?userId=${userId}">View Loan Details</a></li>
                    <li><a href="/user/getemidetailsbyuserid?userId=${userId}">View EMI Details</a></li>
                    <li>
                                         <li><a href="#">Others</a></li>
                    <li>
                    </li>
                </ul>
                </li>
                <li><a href="/emi/addemidetailsform?id=${userId}">Pay EMI</a></li>
                <li><a href="#">Sign Out</a></li>
                <li><a href="#">About</a></li>
            </ul>
        </nav>
</div>
</body>
</html>