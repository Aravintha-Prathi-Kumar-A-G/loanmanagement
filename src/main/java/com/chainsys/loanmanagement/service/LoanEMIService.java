package com.chainsys.loanmanagement.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.loanmanagement.model.LoanEMIdetails;
import com.chainsys.loanmanagement.repository.LoanEMIdetailsRepository;

@Service
public class LoanEMIService {
	 @Autowired
	 private LoanEMIdetailsRepository  loanemi;
	   
	 public List<LoanEMIdetails> getEmiDetails() {
	        List<LoanEMIdetails> loanemiList = loanemi.findAll();
	        return loanemiList;
	    }
	    public LoanEMIdetails saveEmi(LoanEMIdetails loanemidetails) {
	        return loanemi.save(loanemidetails);
	    }

	    public LoanEMIdetails findEmiById(int id) {
	        return loanemi.findById(id);
	    }
	    public void deleteEmiById(int id) {
	    	loanemi.deleteById(id);
	    }

}
