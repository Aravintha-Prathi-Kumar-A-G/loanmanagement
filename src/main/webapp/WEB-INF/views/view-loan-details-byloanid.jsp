<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>VIEW LOAN  AND  LOAN DETAILS</title>
<style>
#loan1 {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#loan1 td, # th {
  border: 1px solid #4E5180;
  padding: 8px;
}

#loan tr:nth-child(even){background-color: #F3E3C3;}

#loan tr:hover {background-color: #FF7082;}

#loan th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #800080;
  color: white;
}
* {
    text-align: center;
}
</style>
</style>
</head>
<body>
    <h1>Online Loan Management System</h1>
    <h3>VIEW LOAN & Loan DETAILS By Loan ID</h3>
            <form action="/loan/getloandetailsbyloan"  method="get">
                <div>
                    Loan ID : <input type="text" name="loanid" />
                </div>
                <br>
                <input type="submit" value="GET" />
            </form>
</body>
</html>