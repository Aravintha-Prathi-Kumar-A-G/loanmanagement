package com.chainsys.loanmanagement.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.loanmanagement.dto.LoanAndLoanDetailsDTO;
import com.chainsys.loanmanagement.dto.LoanAndLoanEMIdetailsDTO;
import com.chainsys.loanmanagement.model.Loan;
import com.chainsys.loanmanagement.model.LoanDetails;
import com.chainsys.loanmanagement.model.LoanEMIdetails;
import com.chainsys.loanmanagement.repository.LoanDetailsRepository;
import com.chainsys.loanmanagement.repository.LoanEMIdetailsRepository;
import com.chainsys.loanmanagement.repository.LoanRepository;

@Service
public class LoanService {
	
	 @Autowired
	 private LoanRepository  loanrepo;
	 @Autowired
	 private LoanDetailsRepository loandetailsrepository;
	 @Autowired
	 private LoanEMIdetailsRepository emidetailsrepository;
	   
	 public List<Loan> getAllLoan() {
	        return loanrepo.findAll();
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
	    
	    public LoanAndLoanDetailsDTO getLoanAndLoanDetails(int id)
		{
			Loan loan=findLoanById(id);
			LoanAndLoanDetailsDTO dto= new LoanAndLoanDetailsDTO();
			dto.setLoan(loan);
			List<LoanDetails> loanlist= loandetailsrepository.findByLoanId(id); // method created in repo in FK
			Iterator<LoanDetails> itr = loanlist.iterator();
			while(itr.hasNext())
			{
				dto.addLoanAndLoanDetailslist(itr.next());
			}
			return dto;
			
		}
	    
	    public LoanAndLoanEMIdetailsDTO getLoanAndLoanEMIdetails(int id)
	  		{
	  			Loan loan=findLoanById(id);
	  			LoanAndLoanEMIdetailsDTO dtoemi= new LoanAndLoanEMIdetailsDTO();
	  			dtoemi.setLoan(loan);
	  			List<LoanEMIdetails> loanlist= emidetailsrepository.findEMIdetailsByLoanId(id); // method created in repo in FK
	  			Iterator<LoanEMIdetails> itr = loanlist.iterator();
	  			while(itr.hasNext())
	  			{
	  				dtoemi.addLoanAndLoanEmidetails(itr.next());
	  			}
	  			return dtoemi;
	  			
	  		}

}
