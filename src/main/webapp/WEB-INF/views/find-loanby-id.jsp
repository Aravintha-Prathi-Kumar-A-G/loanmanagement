<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Loan By Id</title>
</head>
<body>
<h3>Find Loan By ID </h3>
    <div id="root">
        <div id="form">
            <form:form action="" method="post" modelAttribute="findloanbyid">
                  <div>
                User ID :<form:input type="text" path="userId" placeholder="enter Loan ID" readonly="true"/>
                </div>
                <div>
                Loan ID :<form:input type="text" path="loanId" placeholder="enter Loan ID" readonly="true"/>
                </div>
                <br>
                <div>
                Loan Type : <form:input type="text" path="loanType" placeholder="enter Loan Type" readonly="true" />
                </div>
                <br>
            </form:form>
        </div>
    </div>
</body>
</html>