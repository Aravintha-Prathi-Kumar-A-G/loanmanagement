<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add EMI Details Form</title>
<style>
<%@include file="css/form-style2.css"%>
</style>
</head>
<body>
 
    <div id="registration-form" class="center">
        <div id="form" class='fieldset'>
            <form:form action="addemidetails" method="post" modelAttribute="addemidetails">
            
                <h3> EMI Payment</h3>
                <div>
                User ID <form:input type="number" path="userId" placeholder="enter User ID" readonly="true"/>
                </div>
                <br>
                <div>
                Loan ID  <form:input type="number" path="loanId" placeholder="enter Loan ID" readonly="true" />
                </div>
                <br>
                <div>
                Payment Date  <form:input type="date" path="emiDate" placeholder="enter loan issue date" readonly="true"/>
                </div>
                <br>
                <div>
                Payment Amount  <form:input type="number" path="paymentAmount" required="true" readonly="true"/>
                </div>
                <br>
                <%-- <div>
                Payment ID : <form:input path="paymentId" placeholder="Payment Id" />
                </div>
                <br> --%>
                <div>
                <input type="submit" value="Pay EMI" />
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>