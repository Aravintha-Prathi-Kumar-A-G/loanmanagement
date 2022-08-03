<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List All Loan Details</title>
</head>
<body style="background-color: powderblue;">
	<div id="table root">
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
					<th>Total Amount</th>
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
						<td>${loandet.totalAmount}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>