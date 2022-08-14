<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details & Loan EMI Details Tables</title>
<style>
h1, h2, h3 {
    text-align: center;
}
table, th, td {
    border: 2px solid black;
    border-collapse: collapse;
    margin-left: auto;
    margin-right: auto;
    text-align: center;
}

</style>
</head>
<body style="background-color: powderblue;">
    <h1>Loan Management System</h1>
    <h2>User Details and Loan EMI Details Form</h2>

    <div id="user">
        <table width=90%>
            <thead>
                <tr>
                    <th>User ID</th>
					<th>Users Name</th>
					<th>Gender</th>
					<th>Age</th>
					<th>Date Of Birth</th>
					<th>Phone Number</th>
					<th>Pancard Number</th>
					<th>Account Number</th>
					<th>Email</th>
					<th>Address</th>
					<th>Pincode</th>
					<th>Role</th>
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

    <div id="loan details">
        <table width=90%>
            <thead>
                <tr>
                    <th>User ID</th>
					<th>Loan ID</th>
					<th>EMI Date</th>
					<th>Payment Amount</th>
					<th>Payment ID</th>
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