package com.chainsys.loanmanagement.service;

import java.util.Iterator;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.loanmanagement.dto.UserDetailsAndLoanEMIdetailsDTO;
import com.chainsys.loanmanagement.dto.UserDetailsLoanDetailsDTO;
import com.chainsys.loanmanagement.model.LoanDetails;
import com.chainsys.loanmanagement.model.LoanEMIdetails;
import com.chainsys.loanmanagement.model.UserDetails;
import com.chainsys.loanmanagement.repository.LoanDetailsRepository;
import com.chainsys.loanmanagement.repository.LoanEMIdetailsRepository;
import com.chainsys.loanmanagement.repository.UserDetailsRepository;


@Service
public class UserDetailsService {
	 @Autowired
	 private UserDetailsRepository  userdetailsrepo;
	 @Autowired
	 private LoanDetailsRepository loandetailsrepository;
	 @Autowired
	 private LoanEMIdetailsRepository loanemidetailsrepository;
	   
	 public List<UserDetails> getUsersDetails() {
	        return userdetailsrepo.findAll();
	    }
	    public UserDetails saveUser(UserDetails userdetail) {
	        return userdetailsrepo.save(userdetail);
	    }

	    public UserDetails findUserById(int id) {
	        return userdetailsrepo.findById(id);
	    }
	    public void deleteUserById(int id) {
	    	userdetailsrepo.deleteById(id);
	    }
		
	    public UserDetails findEmailIdAndPassword(String email,String password) {
	        return userdetailsrepo.findByEmailAndPassword(email,password);
	    }
	    
	public UserDetailsLoanDetailsDTO getUserDetailsLoanDetails (int id)
	{
		UserDetails userdetail=findUserById(id);
		UserDetailsLoanDetailsDTO dto= new UserDetailsLoanDetailsDTO();
		dto.setUserdetails(userdetail);
		List<LoanDetails> loanlist= loandetailsrepository.findByUserId(id); // method created in repo in FK
		Iterator <LoanDetails> itr = loanlist.iterator();
		while(itr.hasNext())
		{
			dto.addUserdetailsAndLoanlist(itr.next());
		}
		return dto;
		
	}

	  public UserDetailsAndLoanEMIdetailsDTO getUserDetailsAndLoanEMIdetails(int id)
			{
				UserDetails userdetails=findUserById(id);
				UserDetailsAndLoanEMIdetailsDTO dto= new UserDetailsAndLoanEMIdetailsDTO();
				dto.setUserdetails(userdetails);
				List<LoanEMIdetails> emidetails= loanemidetailsrepository.findEMIdetailsByUserId(id); // method created in repo in FK
				Iterator<LoanEMIdetails> itr = emidetails.iterator();
				while(itr.hasNext())
				{
					dto.addUserDetailsAndLoanemidetails(itr.next());
				}
				return dto;
				
			}
}
