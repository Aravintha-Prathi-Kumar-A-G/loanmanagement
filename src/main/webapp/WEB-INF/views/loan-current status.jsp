<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Loan Application Status</title>
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
* {
	text-align: center;
}
</style>
</head>
<body>
	<h1>Online Management System</h1>
	<hr />
	<h2>Loan Application Status</h2>
	<div id="application status">
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
					<th>EMI Amount Per Month</th>
					<th>Total Amount</th>
					<th>Loan Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="loandet" items="${loanstatus}">
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
	<%-- <h3>Action</h3>
	<form:form action="actionrequest" method="post"
		modelAttribute="epassForm">
		<div>
			EpassId :
			<form:input path="epassId" name="epassId" />
		</div>
		<div>
			<form:hidden path="approvalStatus" />
		</div>
		<input type="submit" value="Submit" />
	</form:form> --%>
</body>
</html>