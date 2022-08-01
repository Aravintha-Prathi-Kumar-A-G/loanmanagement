package com.chainsys.loanmanagement.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.loanmanagement.model.LoanEMIdetails;
import com.chainsys.loanmanagement.repository.LoanEMIdetailsRepository;


public class EMIService {
	 @Autowired
	 private LoanEMIdetailsRepository  loanemirepo;
	   
	 public List<LoanEMIdetails> getEmiDetails() {
	        List<LoanEMIdetails> loemiList = loanemirepo.findAll();
	        return loemiList;
	    }
	    public LoanEMIdetails saveEmi(LoanEMIdetails loanemidet) {
	        return loanemirepo.save(loanemidet);
	    }

	    public LoanEMIdetails findEmiById(int id) {
	        return loanemirepo.findById(id);
	    }
	    public void deleteEmiById(int id) {
	    	loanemirepo.deleteById(id);
	    }

}
