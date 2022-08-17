<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Loan By Id</title>
</head>
<body>
<h3>Update Loan Form By ID </h3>
    <div id="root">
        <div id="form">
            <form:form action="updateloan" method="post" modelAttribute="updateloan">
                 <div>
                User ID :<form:input type="text" path="userId" pattern="[0-9]{4]" required="true" />
                </div>
                <div>
                Loan ID :<form:input type="text" path="loanId" placeholder="enter Loan ID" readonly="true" />
                </div>
                <br>
                <div>
                 Loan Type :
                <form:select path="loanType">
                    <form:option value="PersonalLoan" label="PersonalLoan" required="true" />
                    <form:option value="CarLoan" label="CarLoan" required="true" />
                    <form:option value="HomeLoan" label="HomeLoan" required="true" />
                    <form:option value="BusinessLoan"
                        label="BusinessLoan" required="true" />
                    <form:option value="others" label="others" required="true" />
                </form:select>
                </div>
                <br>
                <div>
                <input type="submit" value="Add new Loan " />
                <input type="reset">
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>