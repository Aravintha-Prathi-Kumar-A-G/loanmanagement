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
<body>
<div id="root">
		<div id="getuserdetails">
			<form:form action="add" method="post" modelAttribute="getuserdetails">
				<div>
					<label for="userId">User Id</label>
					<div>
						<form:input path="userId" />
					</div>
				</div>
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" />
					</div>
				</div>
				<div>
					<label for="email">Mail ID</label>
					<div>
						<form:input path="email" />
					</div>	
			</form:form>
		</div>
	</div>
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