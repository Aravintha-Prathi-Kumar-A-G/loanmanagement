package com.chainsys.loanmanagement.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.loanmanagement.pojo.LoanDetails;
import com.chainsys.loanmanagement.repository.LoanDetailsRepository;

 @Service
 public class LoanDetailsService {

	 @Autowired
	 private LoanDetailsRepository  lodetobj;
	   
	 public List<LoanDetails> getloanDetails() {
	        List<LoanDetails> loanDetList = lodetobj.findAll();
	        return loanDetList;
	    }
	    public LoanDetails save(LoanDetails loandet) {
	        return lodetobj.save(loandet);
	    }

	    public LoanDetails findById(int id) {
	        return lodetobj.findById(id);
	    }
	    public void deleteById(int id) {
	    	lodetobj.deleteById(id);
	    }

	    
}
