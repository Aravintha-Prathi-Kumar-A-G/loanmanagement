<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Adding Loan Details</title>
 <style>
      div {
        margin-bottom: 10px;
      }
      label {
        display: inline-block;
        width: 150px;
        text-align: right;
      }
    </style>
    <script type="text/javascript">
    function pendingEMI() {
    	var noOfEMIperMonth = document.getElementById("noOfEmis").value;
	    var noOfPendingEMIperMonth = noOfEMIperMonth;
		document.getElementById("noOfEmiPending").value = noOfPendingEMIperMonth;

	}
    </script>
</head>
<body>
 <h3>Customers Loan Applying form</h3>
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
                <%-- <div>
                <div><label for="loanDate">Loan Apply Date</label>
        		<form:input type="date"  path="loanDate" min="2022-08-10" required="true"  />
                </div>
                 </div>
                <br> --%>
                <div>
                <div><label for="loanAmount">Loan Amount</label>
              <form:input type="number" path="loanAmount" id="loanAmount" name="loanAmount" 
               placeholder="Enter Loan Amount" title="loan amount only in numbers" required="true"/>
                </div> 
                 </div>
                <br>
                   <div>
                   <div><label for="noOfEmis">NO OF EMI's IN MONTH</label>
                <form:select path="noOfEmis" id="noOfEmis" name="noOfEmis">
                    <form:option value="12" label="12 Months" required="true" />
                    <form:option value="24" label="24 Months" required="true" />
                    <form:option value="36" label="36 Months" required="true" />
                    <form:option value="48" label="48 Months" required="true" />
                </form:select>
            </div>
             </div>
                <br>
                <div>
				<div>
					<label for="noOfEmiPending">No Of EMI's Pending</label>
					<form:input type="number" path="noOfEmiPending" id="noOfEmiPending" name="noOfEmiPending" onclick="pendingEMI(this.form)"
						placeholder="Enter no of emi's pending in month"  required="true" readonly="true" />
				</div>
			</div>
			<br>
                <div>
                <div><label for="loanStatus">Loan Status</label>
                    <form:input  path="loanStatus" value="Applied" label="Applied" required="true" readonly="true"/>
            </div>
             </div>
             <br>
                <div>
                <input type="submit" value="Apply Loan Details" />
                <input type="reset">
                </div>
            </form:form>
        </div>
</body>
</html>