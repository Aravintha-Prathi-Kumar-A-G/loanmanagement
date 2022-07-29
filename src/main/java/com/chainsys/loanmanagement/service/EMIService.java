package com.chainsys.loanmanagement.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.loanmanagement.pojo.LoanEMIdetails;
import com.chainsys.loanmanagement.repository.LoanEMIdetailsRepository;


public class EMIService {
	 @Autowired
	 private LoanEMIdetailsRepository  loemiobj;
	   
	 public List<LoanEMIdetails> getloanDetails() {
	        List<LoanEMIdetails> loemiList = loemiobj.findAll();
	        return loemiList;
	    }
	    public LoanEMIdetails save(LoanEMIdetails loemidet) {
	        return loemiobj.save(loemidet);
	    }

	    public LoanEMIdetails findById(int id) {
	        return loemiobj.findById(id);
	    }
	    public void deleteById(int id) {
	    	loemiobj.deleteById(id);
	    }

}
