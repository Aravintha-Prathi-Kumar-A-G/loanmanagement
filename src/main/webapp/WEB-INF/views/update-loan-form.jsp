<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Loan By Id</title>
<style>
<%@include file="css/loanrequest.css"%>
<%@include file="css/button.css"%>
</style>
</head>
<body>
<button class="button" onclick="history.back()">Go Back</button>
    <div id="form">
		<div class="container">
			<h3>Update Loan Request</h3>
			<form:form action="updateloan" method="post" modelAttribute="updateloan">
			 <div class="form">
				<div>
					<label for="userId">User ID</label><br>
					<form:input path="userId" pattern="[0-9]{4}"
						title="Enter valid User ID" placeholder="enter Loan ID"
						readonly="true" required="true" />
				</div>
				<br>
				<div>
				<label for="loanId">Loan ID (Auto Generate)</label><br>
					<form:hidden path="loanId" placeholder="enter Loan ID"
						readonly="true" />
				</div>
				<br>
				<div>
				<label for="loanType">Loan Type</label><br>
					<form:select path="loanType">
						<form:option value="PersonalLoan" label="PersonalLoan"
							required="true" />
						<form:option value="CarLoan" label="CarLoan" required="true" />
						<form:option value="HomeLoan" label="HomeLoan" required="true" />
						<form:option value="BusinessLoan" label="BusinessLoan"
							required="true" />
						<form:option value="others" label="others" required="true" />
					</form:select>
				</div>
				<br>
				 <div>
                <button type="submit" value="Loan Request" class="signupbtn">Update</button>
                <br>
                <br>
                <button type="reset" class="cancelbtn">Reset</button>
                </div>
                </div>
			</form:form>
		</div>
	</div>
</body>
</html>