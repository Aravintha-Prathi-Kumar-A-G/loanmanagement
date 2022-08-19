package com.chainsys.loanmanagement.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.loanmanagement.model.LoanEMIdetails;
import com.chainsys.loanmanagement.model.UserDetails;


public class UserDetailsAndLoanEMIdetailsDTO {
	
	@Autowired
	private UserDetails userdetails;
	private List <LoanEMIdetails> loanemidetails = new ArrayList <> ();
	
	public UserDetails getUserdetails() {
		return userdetails;
	}
	public void setUserdetails(UserDetails userdetails) {
		this.userdetails = userdetails;
	}
	public List<LoanEMIdetails> getLoanemidetails() {
		return loanemidetails;
	}
	public void addUserDetailsAndLoanemidetails(LoanEMIdetails emidetails) {
		loanemidetails.add(emidetails);
	}
	

}
