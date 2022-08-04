package com.chainsys.loanmanagement.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.loanmanagement.model.Loan;
import com.chainsys.loanmanagement.model.LoanDetails;

public class LoanAndLoanDetailsDTO {
	
	@Autowired
	private Loan loan;
	private List <LoanDetails> loanlist = new ArrayList <LoanDetails> ();
	
	public Loan getLoan() {
		return loan;
	}

	public void setLoan(Loan loan) {
		this.loan = loan;
	}

	public List<LoanDetails> getLoanlist() {
		return loanlist;
	}

	public void addLoanAndLoanDetailslist(LoanDetails doc) {
		loanlist.add(doc);
	}
	
}



