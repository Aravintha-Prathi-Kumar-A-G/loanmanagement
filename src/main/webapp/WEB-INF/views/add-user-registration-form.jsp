<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.chainsys.loanmanagement.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Registration form</title>
<style>
<%@include file ="css/forms.css"%>
</style>
<script type="text/javascript">
	function ageCount() {
		var userinput = document.getElementById("dob").value;
		var dob = new Date(userinput);
		if (userinput == null || userinput == '') {
			document.getElementById("message").innerHTML = "**Choose a date please!";
			return false;
		} else {
			//calculate month difference from current date in time
			var month_diff = Date.now() - dob.getTime();
			//convert the calculated difference in date format
			var age_dt = new Date(month_diff);
			//extract year from date    
			var year = age_dt.getUTCFullYear();
			//now calculate the age of the user
			var age = Math.abs(year - 1970);
			//display the calculated age
			document.getElementById("age").value = age;
		}
	}
</script>
</head>
<body style="background-color: #CCFFFF;">
	<h1>User Registration form</h1>
	<br>
	<div id="form">
		<form:form action="adduserdetails" method="post"
			modelAttribute="adduser">
			<table>
				<caption></caption>
				<tr>
					<th scope="col">UserId</th>
					<td><form:input path="userId" placeholder="enter User ID"
							pattern="[0-9]{4}" title="user ID only contains Numbers "
							required="true" /></td>
				</tr>
				<tr>
					<th scope="col">Name</th>
					<td><form:input path="userName" name="userName"
							placeholder="enter your name"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" /></td>
				</tr>
				<tr>
					<th scope="col">Gender </th>
					<td><form:radiobutton path="gender" name="gender" value="Male"
							required="true" />Male <form:radiobutton path="gender"
							name="gender" value="Female" required="true" />Female <form:radiobutton
							path="gender" name="gender" value="others" required="true" />Others
					</td>
				</tr>
				<tr>
					<th scope="col">Date Of Birth </th>
					<td><form:input type="date" path="dob" id="dob" name="dob"
							min="<%=Logic.getMaxAge()%>" max="<%=Logic.getMinAge()%>"
							required="true"/></td>
				</tr>
				<tr>
					<th scope="col">Age</th>
					<td><form:input path="age" name="age"
							onclick="ageCount(this.form)" readonly="true" requried="true" /></td>
				</tr>
				<tr>
					<th scope="col">Phone Number</th>
					<td><form:input path="phoneNumber" pattern="[0-9]{10}"
							title="please enter your Ten Digit phone numbers "
							required="true" /></td>
				</tr>
				<tr>
					<th scope="col">Email</th>
					<td><form:input type="email" path="email" name="email"
							placeholder="eg.aga@gmail.com"
							pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
							title="Invalid email" required="true" /></td>
				</tr>
				<tr>
					<th scope="col">PanCard Number</th>
					<td><form:input path="pancardNumber" name="pancardNumber"
							pattern="[A-Z]{5}[0-9]{4}[A-Z]{1}"
							title="please enter valid Pancard Number"
							placeholder="enter your pancard number" required="true" /></td>
				</tr>
				<tr>

					<th scope="col">Account Number</th>
					<td><form:input type="text" path="accountNumber"
							name="accountNumber" placeholder="enter your Bank Account number"
							pattern="[0-9]{9,18}" title="Account number must be 9 to 18 "
							required="true" /></td>
				</tr>
				<tr>
					<th scope="col">Address</th>
					<td><form:textarea path="address" name="address" cols="50"
							rows="6" title="Enter your valid address" required="true" /></td>
				</tr>
				<tr>
					<th scope="col">Pincode :</th>
					<td><form:input path="pincode" name="pincode number"
							placeholder="enter your pincode" pattern="^[0-9]{6}"
							title="enter your valid picode number" required="true" /></td>
				</tr>
				<tr>
					<th scope="col">Role</th>
					<td><form:radiobutton path="role" value="User" required="true" />User
						<form:radiobutton path="role" value="Admin" required="true" />Admin
					</td>
				</tr>
				<tr>
					<th scope="col">User Password</th>
					<td><form:password path="password" name="password"
							pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$"
							title="password must contains 8 letters and eg.Asddjh@45687"
							required="true" />
				</tr>
				</table>
				<div class="buttons2">
				<table ><caption></caption>
				<tr><th ></th>
					<td><button type="reset" class="cancelbtn">Reset</button>
						<button type="submit" class="signupbtn">Submit</button></td>
				</tr>
			</table>
			</div>
		</form:form>
	</div>
</body>
</html>