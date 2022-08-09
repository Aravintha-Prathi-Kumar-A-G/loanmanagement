<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Loan</title>
</head>
<body>
 <h3>Loan Registration form</h3>
    <div id="root">
        <div id="form">
            <form:form action="addloan" method="post" modelAttribute="addnewloan">
                <div>
                Loan ID :<form:input  path="loanId" placeholder="enter Loan ID"/>
                </div>
                <br>
                <div>
                 Loan Type :
                <form:select path="loanType">
                    <form:option value="PersonalLoan" label="PersonalLoan" />
                    <form:option value="CarLoan" label="CarLoan" />
                    <form:option value="HomeLoan" label="HomeLoan" />
                    <form:option value="BusinessLoan"
                        label="BusinessLoan" />
                    <form:option value="others" label="others" />
                </form:select>
                </div>
                <br>
                <div>
                <input type="submit" value="Add new Loan" />
                <input type="reset">
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>