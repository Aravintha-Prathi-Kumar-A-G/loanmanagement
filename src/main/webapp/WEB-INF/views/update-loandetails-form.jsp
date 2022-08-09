<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Loan Details</title>
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
 <h3> Update Loan Details</h3>
    <div id="root">
        <div id="form">
            <form:form action="updateloandetails" method="post" modelAttribute="loandetailsupdate">
                
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
                Loan Amount : <form:input  path="loanAmount" id="loanAmount" name="loanAmount" onchange="emiCalculation()" placeholder="Enter Loan Amount"/>
                </div> 
                <br>
                 <div>
                Total  Amount : <form:input  path="totalAmount" id="totalAmount" name="totalAmount" onchange="emiCalculation(this.form)" placeholder="Enter Total Amount"/>
                </div>
                <br>
               No of EMI's in Month:
                <form:select path="noOfEmis">
                    <form:option value="12" label="12 Months" />
                    <form:option value="24" label="24 Months" />
                    <form:option value="36" label="36 Months" />
                    <form:option value="48" label="48 Months" />
                </form:select>
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
               Loan Status :
                <form:select path="loanStatus">
                    <form:option value="Applied" label="Applied" />
                    <form:option value="Processing" label="Processing" />
                    <form:option value="Approved" label="Approved" />
                    <form:option value="Rejected" label="Approved" />
                </form:select>
            </div>
                </div>
                <br>
                <div>
               EMI Amount Per Month  : <form:input path="monthlyEMIAmount" id="monthlyEMIAmount" name="monthlyEMIAmount" onchange="emiCalculation(this.form)" placeholder="emi amount per month " />
                </div>
                <br>
                 <div>
               Interest  : <form:input path="interest" id="interest"  name="interest" onchange="emiCalculation()" placeholder="enter Interest per Loan " />
                </div>
                <br>
                <div>
                <input type="submit" value="Update  Loan Details" />
                <input type="reset">
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>