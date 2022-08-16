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
#loan1 {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#loan1 td, # th {
  border: 1px solid #4E5180;
  padding: 8px;
}

#loan tr:nth-child(even){background-color: #F3E3C3;}

#loan tr:hover {background-color: #FF7082;}

#loan th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #800080;
  color: white;
}
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
        <table id="loan" width=90%>
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
        <table id="loan" width=90%>
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