<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update user form</title>
<style>
<%@include file="css/forms.css"%>
</style>
<script type="text/javascript">
function ageCount() {
    var userinput = document.getElementById("dob").value;
    var dob = new Date(userinput);
    if(userinput==null || userinput=='') {
      document.getElementById("message").innerHTML = "**Choose a date please!";  
      return false; 
    } else 
    {
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
<body style="background-color:#CCFFFF;" >
<h1>Update User Details</h1>
<br>
        <div id="form">
            <form:form action="adduserdetails" method="post" modelAttribute="updateuser">
                <table class ="center">
                <tr>
                <td>UserId </td>
               <td> <form:input path="userId" placeholder="enter User ID" pattern="[0-9]{4}"  title="user ID only contains Numbers " required="true" /></td>
                </tr>
                <tr>
                <td>Name </td>
                 <td><form:input path="userName" name="userName" placeholder="enter your name" title="Name can't be empty or must contain only alphabets"
                          pattern="^[a-zA-Z]+$" required="true"/></td>
                </tr>
                <tr>
                <td>Gender  </td>
               <td> <form:radiobutton path="gender"  name="gender" value="Male" required="true" />Male
                         <form:radiobutton path="gender"  name="gender" value="Female" required="true" />Female
                         <form:radiobutton path="gender" name="gender" value="others" required="true" />Others </td>
                </tr>
                 <tr>
                <td> Date Of Birth  </td> 
              <td>  <form:input type="date"  path="dob" name="dob"  required="true" /></td>
                </tr>
                <tr>
                <td>Age </td>
                <td> <form:input path="age"  name="age" onclick="ageCount(this.form)" readonly="true" requried="true" /></td>
                 </tr>
                <tr>
               <td> Phone Number  </td>
             <td>  <form:input path="phoneNumber" pattern="[0-9]{10}" title="please enter your Ten Digit phone numbers " required="true" /></td>
                </tr>
                <tr>
               <td> Email </td>
               <td> <form:input type="email" path="email" name="email" placeholder="eg.aga@gmail.com" pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$" 
                     title="Invalid email" required="true" /></td>
                </tr>
                <tr>
                <td>PanCard Number  </td>
                <td><form:input  path="pancardNumber" name="pancardNumber"  pattern="[A-Z]{5}[0-9]{4}[A-Z]{1}" title="please enter valid Pancard Number" placeholder="enter your pancard number" required="true" /> </td>
                </tr>
                <tr>
                
               <td>Account Number  </td>
                <td> <form:input type="text" path="accountNumber" name="accountNumber"  placeholder="enter your Bank Account number" pattern="[0-9]{9,18}" title="Account number must be 9 to 18 "  required="true"/> </td>
                </tr>
                <tr>
                <td>Address  </td>
                <td> <form:textarea path="address" name="address" cols="50" rows="6" title="Enter your valid address"  required="true"/> </td>
                </tr>
                <tr>
                 <td>Pincode   </td>
                <td> <form:input path="pincode" name="pincode number"  placeholder="enter your pincode" pattern="[0-9]{6}" title="enter your valid pincode number"  required="true"/></td>
                </tr>
                <tr>
               <td>  Role  </td>
                <td> <form:radiobutton path="role" value="User"  required="true"/>User
                         <form:radiobutton path="role" value="Admin"  required="true"/>Admin </td>
                </tr>
              <tr>
					<td>User Password </td>
					<td><form:password path="password" name="password"
							pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$"
						title="password must contains 8 letters and eg.Asddjh@45687"	required="true" />
				</tr>
                <tr>
                        <td><button type="reset" class="cancelbtn">Reset</button>
                     <button type="submit" class="signupbtn">Update User</button></td>
                    </tr>
                </table>
            </form:form>
        </div>
</body>
</html>