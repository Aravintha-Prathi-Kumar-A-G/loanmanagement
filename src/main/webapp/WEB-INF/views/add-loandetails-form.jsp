<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding Loan Details</title>
</head>
<body>
 <h3>Loan Details Registration form</h3>
    <div id="root">
        <div id="form">
            <form:form action="addloandetails" method="post" modelAttribute="addloandetails">
                
                <div>
                User ID :<form:input path="userId" placeholder="enter User ID"/>
                </div>
                <br>
                <div>
                Loan ID : <form:input path="loanId" placeholder="enter Loan ID" />
                </div>
                <br>
                <div>
                LOAN Issue Date : <form:input type="date" path="loanDate" placeholder="enter loan issue date" />
                </div>
                <br>
                <div>
                Loan Amount : <form:input  path="loanAmount" placeholder="Enter Loan Amount"/>
                </div>
                <br>
                 <div>
                Total  Amount : <form:input  path="totalAmount" placeholder="Enter Total Amount"/>
                </div>
                <br>
                <div>
                No of EMI's : <form:input path="noOfEmis" placeholder="no of emi's on Month" />
                </div>
                <br>
                <div>
               EMI Due Date : <form:input type="date"  path="dueDate"  placeholder="enter EMI Due Date" />
                </div>
                <br>
                 <div>
               EMI Paid Date  : <form:input type="date" path="emiPaid"   placeholder="enter EMI Paid Date " />
                </div>
                <br>
                <div>
               No Of EMI's Paid: <form:input  path="noOfEmiPaid" placeholder="Enter no of emi's paid in month" />
                </div>
                <br>
                <div>
               No Of EMI's Pending: <form:input  path="noOfEmiPending" placeholder="Enter no of emi's pending in month" />
                </div>
                <br>
                 <div>
               Interest  : <form:input path="interest"   placeholder="enter Interest per Loan " />
                </div>
                <br>
                <div>
                <input type="submit" value="Add Loan Details" />
                <input type="reset">
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>