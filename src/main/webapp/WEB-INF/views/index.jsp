<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration form</title>
</head>
<body>
<h1>Loan Management System</h1>
    <h3>User Registration form</h3>
    <div id="root">
        <div id="form">
            <form:form action="add" method="post" modelAttribute="adduser">
                
                <div>
                UserId :<form:input path="user_id" placeholder="Enter user id eg.1001" />
                </div>
                <br>
                <div>
                Name : <form:input path="Name" placeholder="Enter your Name"/>
                </div>
                <div>
                Gender : <form:radiobutton path="gender" value="Male" />Male
                         <form:radiobutton path="gender" value="Female" />Female
                </div>
                <br>
                <div>
                Age : <form:input type="text" path="age" />
                </div>
                <br>
                <div>
                Email : <form:input path="email" placeholder="enter your email" />
                </div>
                <br>
                <div>
                Address : <form:textarea path="address" cols="50" rows="5"  placeholder="Door No,Street,Village,Town,pincode" />  
                </div>
                <br>
                <div>
                Mobile Number : <form:input path="mobile_number" name="phone" size="10" />
                </div>
                <br>
                <div>
                User Password : <form:password path="user_password"/>
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