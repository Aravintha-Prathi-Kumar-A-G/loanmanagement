package com.chainsys.loanmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.loanmanagement.pojo.Loan;
import com.chainsys.loanmanagement.repository.LoanRepository;

@Service
public class LoanService {
	
	 @Autowired
	 private LoanRepository  loanobj;
	   
	 public List<Loan> getaboutLoan() {
	        List<Loan> loList =loanobj.findAll();
	        return loList;
	    }
	    public Loan save(Loan loan1) {
	        return loanobj.save(loan1);
	    }

	    public Loan findById(int id) {
	        return loanobj.findById(id);
	    }
	    public void deleteById(int id) {
	        loanobj.deleteById(id);
	    }

}
