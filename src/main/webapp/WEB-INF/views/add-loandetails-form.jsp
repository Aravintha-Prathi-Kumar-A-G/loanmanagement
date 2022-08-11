<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding Loan Details</title>
<script type="text/javascript">
function emiCalculation()
{
	var loanAmount = document.getElementById("loanAmount").value;
	var noOfEMIperMonth = document.getElementById("noOfEmis").value;
	var interest = document.getElementById("interest").value;
	var monthlyEMI = document.getElementById("monthlyEMIAmount").value;
	
	var monthlyEMI2 =  parseInt(loanAmount) * parseFloat(interest) / parseInt(noOfEMIperMonth);
	var totalAmount = parseInt(monthlyEMI2) * parseInt(noOfEMIperMonth);
	
	document.getElementById("monthlyEMIAmount").value = monthlyEMI2;
	document.getElementById("totalAmount").value = totalAmount;
		
	}

</script>
</head>
<body>
 <h3>Customers Loan Applying form</h3>
    <div id="root">
        <div id="form">
            <form:form action="addloandetails" method="post" modelAttribute="addloandetails">
                
                <div>
              <div><label for="userId">User ID</label>
               <form:input path="userId" placeholder="enter User ID" pattern="[0-9]{4}"  title="user ID only contains Numbers" required="true"/>
                </div>
                </div>  
                <br>
                <div>
                <div><label for="loanId">Loan ID</label>
                <form:input path="loanId" placeholder="enter Loan ID" required="true"  />
                </div>
                 </div>
                <br>
                <div>
                <div><label for="loanDate">Loan Apply Date</label>
        		<form:input type="date" path="loanDate" required="true" readonly="true" />
                </div>
                 </div>
                <br>
                <div>
                <div><label for="loanAmount">Loan Amount</label>
              <form:input  path="loanAmount" id="loanAmount" name="loanAmount" onchange="emiCalculation()"
               placeholder="Enter Loan Amount" required="true" required="true"/>
                </div> 
                 </div>
                <br>
                 <div>
                <!-- Total  Amount : --> <form:hidden  path="totalAmount" id="totalAmount" name="totalAmount" 
                onchange="emiCalculation(this.form)" required="true" readonly="true"/>
                </div>
                 </div>
                <br>
                   <div>
                   <div><label for="noOfEmis">NO OF EMI's IN MONTH</label>
                <form:select path="noOfEmis">
                    <form:option value="12" label="12 Months" required="true" />
                    <form:option value="24" label="24 Months" required="true" />
                    <form:option value="36" label="36 Months" required="true" />
                    <form:option value="48" label="48 Months" required="true" />
                </form:select>
            </div>
             </div>
                <br>
                <div>
                <div><label for="loanStatus">Loan Status</label>
                    <form:input  path="loanStatus" value="Applied" label="Applied" required="true" readonly="true"/>
            </div>
             </div>
                <div>
                <input type="submit" value="Apply Loan Details" />
                <input type="reset">
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>