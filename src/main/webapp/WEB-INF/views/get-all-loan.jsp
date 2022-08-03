<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get All Loan</title>
</head>
<body style="background-color: powderblue;">
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Loan ID</th>
					<th>Loan Type</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="loan" items="${getallloan}">
					<tr>
						<td>${loan.loanId}</td>
						<td>${loan.loanType}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>