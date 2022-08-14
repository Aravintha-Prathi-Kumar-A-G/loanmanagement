<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan & LoanDetails Tables List</title>
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
<body>
    <h1>Loan Management System</h1>
    <h2>Loan Details Form</h2>

    <div id="loan">
        <table>
            <thead>
                <tr>
                   <th>Loan ID</th>
					<th>Loan Type</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                  <td>${getloan.loanId}</td>
				  <td>${getloan.loanType}</td>
                   
                </tr>
            </tbody>
        </table>
    </div>

    <div id="loan details">
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
                <c:forEach var="loandet" items="${loandetails}">
                    <!-- var-variables,items-collection -->
                    <tr>
                      	<td>${loandet.userId}</td>
						<td>${loandet.loanId}</td>
						<td>${loandet.loanDate}</td>
						<td>${loandet.loanAmount}</td>
						<td>${loandet.noOfEmis}</td>
						<td>${loandet.dueDate}</td>
						<td>${loandet.emiPaid}</td>
						<td>${loandet.noOfEmiPaid}</td>
						<td>${loandet.noOfEmiPending}</td>
						<td>${loandet.interest}</td>
						<td>${loandet.monthlyEMIAmount}</td>
						<td>${loandet.totalAmount}</td>
						<td>${loandet.loanStatus}</td>
						<td><button onclick = "window.location.href='/loandetails/adminupdateloandetails'">Update</button></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>