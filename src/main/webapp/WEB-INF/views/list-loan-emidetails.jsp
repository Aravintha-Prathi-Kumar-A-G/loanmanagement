<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan & Loan EMI Details </title>
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
<br>

<br>
    <div id="loan EMI details">
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
                <c:forEach var="emidetails" items="${emilist}">
                    <!-- var-variables,items-collection -->
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