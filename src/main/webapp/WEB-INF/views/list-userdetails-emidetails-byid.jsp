<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Details & Loan EMI Details Tables</title>
<style>
<%@include file="css/admin-navbar.css"%>
<%@include file="css/table-style.css"%>
<%@include file="css/button.css"%>
</style>
</head>
<body style="background-color: #5bb5c1;">
<div>
<nav>
			<div id="logo">LOAN MANAGEMENT SYSTEM</div>
		</nav>
</div>
<br>
<button class="button" onclick="history.back()">Go Back</button>
<br>
    <div id="user">
       <h2>User and Loan EMI Details </h2>
        <table id="loan" class="center"><caption></caption>
            <thead>
                <tr>
                    <th scope="col">User ID</th>
					<th scope="col">Users Name</th>
					<th scope="col">Gender</th>
					<th scope="col">Age</th>
					<th scope="col">Date Of Birth</th>
					<th scope="col">Phone Number</th>
					<th scope="col">Pan</th>
					<th scope="col">Account Number</th>
					<th scope="col">Email</th>
					<th scope="col">Address</th>
					<th scope="col">Pincode</th>
					<th scope="col">Role</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                 	    <td>${getuser.userId}</td>
						<td>${getuser.userName}</td>
						<td>${getuser.gender}</td>
						<td>${getuser.age}</td>
						<td>${getuser.dob}</td>
						<td>${getuser.phoneNumber}</td>
						<td>${getuser.pancardNumber}</td>
						<td>${getuser.accountNumber}</td>
						<td>${getuser.email}</td>
						<td>${getuser.address}</td>
						<td>${getuser.pincode}</td>
						<td>${getuser.role}</td>
                   
                </tr>
            </tbody>
        </table>
    </div>
<br>
<br>
    <div id="loan details">
        <table id="loan" class="center" ><caption></caption>
            <thead>
                <tr>
                    <th scope="col">User ID</th>
					<th scope="col">Loan ID</th>
					<th scope="col">EMI Date</th>
					<th scope="col">Payment Amount</th>
					<th scope="col">Payment ID</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="emidetails" items="${loanemidetails}">
                    <!-- var-variables,items-collection -->
                    <tr>
                      	<td>${emidetails.userId}</td>
						<td>${emidetails.loanId}</td>
						<td>${emidetails.emiDate}</td>
						<td>${emidetails.paymentAmount}</td>
						<td>${emidetails.paymentId}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>