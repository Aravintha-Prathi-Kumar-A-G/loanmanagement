package com.chainsys.loanmanagement.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.loanmanagement.model.LoanDetails;
import com.chainsys.loanmanagement.repository.LoanDetailsRepository;

 @Service
 public class LoanDetailsService {

	 @Autowired
	 private LoanDetailsRepository  loandetailsrepo;
	   
	 public List<LoanDetails> getloanDetails() {
	        List<LoanDetails> loandetailsList = loandetailsrepo.findAll();
	        return loandetailsList;
	    }
	    public LoanDetails saveLoanDetails(LoanDetails loandetails) {
	        return loandetailsrepo.save(loandetails);
	    }

	    public LoanDetails findLoanDetailsById(int id) {
	        return loandetailsrepo.findById(id);
	    }
	    public void deleteLoanDetailsById(int id) {
	    	loandetailsrepo.deleteById(id);
	    }

	    
}
