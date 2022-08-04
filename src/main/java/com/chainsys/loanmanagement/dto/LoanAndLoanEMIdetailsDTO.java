package com.chainsys.loanmanagement.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.loanmanagement.model.Loan;
import com.chainsys.loanmanagement.model.LoanEMIdetails;

public class LoanAndLoanEMIdetailsDTO {

	@Autowired
	private Loan loan;
	private List <LoanEMIdetails> emidetails = new ArrayList<LoanEMIdetails>();

	public Loan getLoan() {
		return loan;
	}
	public void setLoan(Loan loan) {
		this.loan = loan;
	}
	public List<LoanEMIdetails> getEmidetails() {
		return emidetails;
	}
	public void addLoanAndLoanEmidetails(LoanEMIdetails emidet) {
		emidetails.add(emidet);
	}


}
