package com.chainsys.loanmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.loanmanagement.model.Loan;
import com.chainsys.loanmanagement.repository.LoanRepository;

@Service
public class LoanService {
	
	 @Autowired
	 private LoanRepository  loanrepo;
	   
	 public List<Loan> getAllLoan() {
	        List<Loan> loanList =loanrepo.findAll();
	        return loanList;
	    }
	    public Loan saveLoan(Loan loan) {
	        return loanrepo.save(loan);
	    }

	    public Loan findLoanById(int id) {
	        return loanrepo.findById(id);
	    }
	    public void deleteLoanById(int id) {
	    	loanrepo.deleteById(id);
	    }

}
