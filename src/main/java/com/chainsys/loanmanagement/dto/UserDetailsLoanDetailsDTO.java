package com.chainsys.loanmanagement.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.loanmanagement.model.LoanDetails;
import com.chainsys.loanmanagement.model.UserDetails;

public class UserDetailsLoanDetailsDTO {
	
	@Autowired
	private UserDetails userdetails;
	private List <LoanDetails> loanlist = new ArrayList <> ();

	public UserDetails getUserdetails() {
		return userdetails;
	}
	public void setUserdetails(UserDetails userdetails) {
		this.userdetails = userdetails;
	}
	public List<LoanDetails> getLoanlist() {
		return loanlist;
	}
	public void addUserdetailsAndLoanlist(LoanDetails loan) {
		loanlist.add(loan);
	}

}
