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
					<th>EMI paid</th>
					<th>EMI Pending</th>
					<th>Interest</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="loandet" items="${getalllonedetails}">
					<tr>
						<td>${loandet.userId}</td>
						<td>${loandet.loanId}</td>
						<td>${loandet.loanDate}</td>
						<td>${loandet.loanAmount}</td>
						<td>${loandet.noOfEmis}</td>
						<td>${loandet.dueDate}</td>
						<td>${loandet.emiPaid}</td>
						<td>${loandet.emiPending}</td>
						<td>${loandet.interest}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>