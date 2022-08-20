<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get All Loan</title>
<style>
<%@include file="css/table-style.css"%>
</style>
</head>
<body style="background-color: #5bb5c1;">
<h1>List All Loans</h1>
	<div id="table root">
		<table id="loan"><caption></caption>
			<thead>
				<tr>
					<th scope="col">User ID</th>
					<th scope="col">Loan ID</th>
					<th scope="col">Loan Type</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="loan" items="${getallloan}">
					<tr>
						<td>${loan.userId}</td>
						<td>${loan.loanId}</td>
						<td>${loan.loanType}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>