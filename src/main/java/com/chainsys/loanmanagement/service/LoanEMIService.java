package com.chainsys.loanmanagement.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.loanmanagement.businesslogic.Logic;
import com.chainsys.loanmanagement.model.LoanDetails;
import com.chainsys.loanmanagement.model.LoanEMIdetails;
import com.chainsys.loanmanagement.repository.LoanEMIdetailsRepository;

@Service
public class LoanEMIService {
	 @Autowired
	 private LoanEMIdetailsRepository  loanemi;
	 @Autowired
		private LoanDetailsService loanDetailsService;
	 public List<LoanEMIdetails> getEmiDetails() {
	        return loanemi.findAll();
	    }
	    public LoanEMIdetails saveEmi(LoanEMIdetails loanemidetails) {
	    	LoanEMIdetails emI=loanemi.save(loanemidetails);
	    	LoanDetails loanDetails=loanDetailsService.findLoanDetailsById(emI.getUserId());
	    	loanDetails.setEmiPaid(Logic.getInstanceDate());
	    	loanDetails.setTotalAmount(Logic.balanceEmIAmount(loanDetails.getTotalAmount(), emI.getPaymentAmount()));
	    	loanDetails.setNoOfEmiPaid(Logic.increamentPaidEmI(loanDetails.getNoOfEmiPaid()));
	    	loanDetails.setNoOfEmiPending(Logic.decreamentPendingEmI(loanDetails.getNoOfEmiPending()));
	    	loanDetails.setDueDate(Logic.increamentDueDate(loanDetails.getDueDate()));
	    	loanDetailsService.saveLoanDetails(loanDetails);
	        return emI;
	    }

	    public LoanEMIdetails findEmiById(int id) {
	        return loanemi.findById(id);
	    }
	    public void deleteEmiById(int id) {
	    	loanemi.deleteById(id);
	    }
	    public LoanEMIdetails updateEmI(LoanEMIdetails loanEMIdetails) {
	    	return loanemi.save(loanEMIdetails);
	    }

}
