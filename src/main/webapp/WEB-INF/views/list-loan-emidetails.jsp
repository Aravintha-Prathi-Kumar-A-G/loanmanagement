<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Loan and Loan EMI Details </title>
<style>
<%@include file="css/admin-navbar.css"%>
<%@include file="css/table-style.css"%>
<%@include file="css/button.css"%>
</style>
</head>
<body style="background-color: #5bb5c1;">
<div>
<nav>
			<div id="logo">LOAN MANAGEMENT SYSTEM </div>
		</nav>
</div>
<br>
<button class="button" onclick="history.back()">Go Back</button>
<br>
    <div id="loan">
   <h2>Loan And Loan EMI Details Form</h2>
        <table id="loan" class="center"><caption></caption>
            <thead>
                <tr>
                	<th scope="col">User ID</th>
                   <th scope="col">Loan ID</th>
					<th scope="col">Loan Type</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                	<td>${getloan.userId}</td>
                  <td>${getloan.loanId}</td>
				  <td>${getloan.loanType}</td>
                   
                </tr>
            </tbody>
        </table>
    </div>
<br>

<br>
    <div id="loan EMI details">
        <table id="loan" class="center"><caption></caption>
            <thead>
                <tr>
                   <th scope="col">User ID</th>
					<th scope="col">Loan ID</th>
					<th scope="col">EMI Date</th>
					<th scope="col">Payment Amount</th>
					<th scope="col">Payment ID</th>
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