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

	 /*   public List<LoanDetails> findByApprovalStatus(String status) {
			List<LoanDetails> statusList = loandetailsrepo.findByLoanApprovalStatus(status);
			return statusList;
		}
	    
	    public List<LoanDetails> loanProcessing() {
			String status = "Processing";
			return loandetailsrepo.findByLoanApprovalStatus(status);
		}
		
		public List<LoanDetails> loanApproved() {
			String status = "Approved";
			return loandetailsrepo.findByLoanApprovalStatus(status);
		}
		
		public List<LoanDetails> loanApplied() {
			String status = "Applied";
			return loandetailsrepo.findByLoanApprovalStatus(status);
		}
		
		public List<LoanDetails> loanRejected() {
			String status = "Rejected";
			return loandetailsrepo.findByLoanApprovalStatus(status);
		} */
	    
}
