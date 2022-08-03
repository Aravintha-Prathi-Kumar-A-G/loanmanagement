<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add EMI Details Form</title>
</head>
<body>
 <h3>Loan EMI Details Registration form</h3>
    <div id="root">
        <div id="form">
            <form:form action="addemidetails" method="post" modelAttribute="addemidetails">
                
                <div>
                User ID :<form:input path="userId" placeholder="enter User ID"/>
                </div>
                <br>
                <div>
                Loan ID : <form:input path="loanId" placeholder="enter Loan ID" />
                </div>
                <br>
                <div>
                EMI Date : <form:input type="date" path="emiDate" placeholder="enter loan issue date" />
                </div>
                <br>
                <div>
                Payment Amount : <form:input  path="paymentAmount" placeholder="Enter Payment Amount"/>
                </div>
                <br>
                <div>
                Payment ID : <form:input path="paymentId" placeholder="Payment Id" />
                </div>
                <br>
                <div>
                <input type="submit" value="Add Loan EMI Details" />
                <input type="reset">
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>