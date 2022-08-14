<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List User Details and Loan details By User ID </title>
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
    <h2>User Details and Loan  Details Form</h2>
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
                 	    <td>${getuserdetails.userId}</td>
						<td>${getuserdetails.userName}</td>
						<td>${getuserdetails.gender}</td>
						<td>${getuserdetails.age}</td>
						<td>${getuserdetails.dob}</td>
						<td>${getuserdetails.phoneNumber}</td>
						<td>${getuserdetails.pancardNumber}</td>
						<td>${getuserdetails.accountNumber}</td>
						<td>${getuserdetails.email}</td>
						<td>${getuserdetails.address}</td>
						<td>${getuserdetails.pincode}</td>
						<td>${getuserdetails.role}</td>
                   
                </tr>
            </tbody>
        </table>
    </div>
    <br>
	<div id="loandetails">
		<table>
			<thead>
				<tr>
					<th>User ID</th>
					<th>Loan ID</th>
					<th>Loan Date</th>
					<th>Loan Amount</th>
					<th>No of EMI's</th>
					<th>Due Date</th>
					<th>EMI paid Date</th>
					<th>No of EMI Paid in Month</th>
					<th>No of EMI Pending in Month</th>
					<th>Interest</th>
					<th>EMI Amount per Month</th>
					<th>Total Amount</th>
					<th>Loan Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="loandetails" items="${loandetails}">
					<tr>
						<td>${loandetails.userId}</td>
						<td>${loandetails.loanId}</td>
						<td>${loandetails.loanDate}</td>
						<td>${loandetails.loanAmount}</td>
						<td>${loandetails.noOfEmis}</td>
						<td>${loandetails.dueDate}</td>
						<td>${loandetails.emiPaid}</td>
						<td>${loandetails.noOfEmiPaid}</td>
						<td>${loandetails.noOfEmiPending}</td>
						<td>${loandetails.interest}</td>
						<td>${loandetails.monthlyEMIAmount}</td>
						<td>${loandetails.totalAmount}</td>
						<td>${loandetails.loanStatus}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>