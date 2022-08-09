<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration form</title>
</head>
<body>
<h1>Loan Management System</h1>
    <h3>User Registration form</h3>
    <div id="root">
        <div id="form">
            <form:form action="adduserdetails" method="post" modelAttribute="adduser">
                
                <div>
                UserId :<form:input path="userId" placeholder="enter User ID"/>
                </div>
                <br>
                <div>
                Name : <form:input path="userName" placeholder="enter User name" />
                </div>
                <br>
                <div>
                Gender : <form:radiobutton path="gender" value="Male" />Male
                         <form:radiobutton path="gender" value="Female" />Female
                         <form:radiobutton path="gender" value="others" />Others
                </div>
                <br>
                <div>
                Age : <form:input path="age" placeholder="enter your age" />
                </div>
                <br>
                <div>
                DOB : <form:input type="date"  path="dob" placeholder="Enter your date of Birth"/>
                </div>
                <br>
                <div>
                Phone Number : <form:input path="phoneNumber" pattern="[0-9]{10}" />
                </div>
                <br>
                <div>
                PanCard Number : <form:input  path="pancardNumber" name="pancard number"  placeholder="enter your pancard number" size="10" />
                </div>
                <br>
                 <div>
                Account Number : <form:input type="text" path="accountNumber" name="account number"  placeholder="enter your Bank Account number" size="15" />
                </div>
                <br>
                <div>
                Email : <form:input type="email" path="email" placeholder="eg.aga@gmail.com" />
                </div>
                <br>
                <div>
                Address : <form:textarea path="address" cols="50" rows="6" />  
                </div>
                <br>
                 <div>
                Pincode : <form:input path="pincode" name="pincode number"  placeholder="enter your pincode" size="6" />
                </div>
                <br>
                 <div>
                Role : <form:radiobutton path="role" value="User" />User
                         <form:radiobutton path="role" value="Admin" />Admin
                </div>
                <br>    
                <div>
                User Password : <form:input type="password"  path="password" placeholder="enter your password"/>
                </div>
                <br>
                <div>
                <input type="submit" value="Submit" />
                <input type="reset">
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>