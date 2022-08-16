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
    <h2>User Details and Loan  Details Form</h2>
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
		<table id="loan">
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