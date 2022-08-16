package com.chainsys.loanmanagement.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.loanmanagement.businesslogic.Logic;
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
	    	loandetails.setLoanDate(Logic.getInstanceDate());
	        return loandetailsrepo.save(loandetails);
	    }

	    public LoanDetails findLoanDetailsById(int id) {
	        return loandetailsrepo.findById(id);
	    }
	    public void deleteLoanDetailsById(int id) {
	    	loandetailsrepo.deleteById(id);
	    }

	   public List<LoanDetails> findByLoanStatus(String status) {
			return loandetailsrepo.findByLoanStatus(status);
		}
	    
	    public List<LoanDetails> loanProcessing() {
			String status = "Processing";
			return loandetailsrepo.findByLoanStatus(status);
		}
		
		public List<LoanDetails> loanApproved() {
			String status = "Approved";
			return loandetailsrepo.findByLoanStatus(status);
		}
		
		public List<LoanDetails> loanApplied() {
			String status = "Applied";
			return loandetailsrepo.findByLoanStatus(status);
		}
		
		public List<LoanDetails> loanRejected() {
			String status = "Rejected";
			return loandetailsrepo.findByLoanStatus(status);
		} 
	    
}
