<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List User Details and Loan details By User ID </title>
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
 	 <h2>User Details and Loan  Details Form</h2>
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
		<table id="loan" class="center"><caption></caption>
			<thead>
				<tr>
					<th scope="col">User ID</th>
					<th scope="col">Loan ID</th>
					<th scope="col">Loan Date</th>
					<th scope="col">Loan Amount</th>
					<th scope="col">No of EMI's</th>
					<th scope="col">Due Date</th>
					<th scope="col">Paid Date</th>
					<th scope="col">Paid EMI's</th>
					<th scope="col">Pending EMI's</th>
					<th scope="col">Interest</th>
					<th scope="col">EMI Amount</th>
					<th scope="col">Total Amount</th>
					<th scope="col">Loan Status</th>
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