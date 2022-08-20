<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List All Loan Details</title>
<style>
<%@include file="css/table-style.css"%>
</style>
</head>
<body style="background-color: #5bb5c1;">
	<div id="table root">
		<table id="loan" ><caption></caption>
			<thead>
				<tr>
					<th scope="col">User ID</th>
					<th scope="col">Loan ID</th>
					<th scope="col">Loan Date</th>
					<th scope="col">Loan Amount</th>
					<th scope="col">No of EMI's</th>
					<th scope="col">Due Date</th>
					<th scope="col">EMI paid Date</th>
					<th scope="col">EMI Paid </th>
					<th scope="col">EMI Pending </th>
					<th scope="col">Interest</th>
					<th scope="col">EMI Amount </th>
					<th scope="col">Total Amount</th>
					<th scope="col">Loan Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="loandet" items="${getallloandetails}">
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
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>