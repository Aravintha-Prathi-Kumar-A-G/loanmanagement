<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get All EMI Details</title>
</head>
<body style="background-color: powderblue;">
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>User ID</th>
					<th>Loan ID</th>
					<th>EMI Date</th>
					<th>Payment Amount</th>
					<th>Payment ID</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="emidetails" items="${getallloanemidetails}">
					<tr>
						<td>${emidetails.userId}</td>
						<td>${emidetails.loanId}</td>
						<td>${emidetails.emiDate}</td>
						<td>${emidetails.paymentAmount}</td>
						<td>${emidetails.paymentId}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>