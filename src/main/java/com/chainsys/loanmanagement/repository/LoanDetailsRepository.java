package com.chainsys.loanmanagement.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.loanmanagement.model.LoanDetails;

public interface LoanDetailsRepository extends CrudRepository <LoanDetails,Integer>{
	LoanDetails findById (int id);
	LoanDetails save (LoanDetails loandetails);
	void deleteById(int loanId);
	List <LoanDetails> findAll();
	List<LoanDetails> findByUserId(int id);
	List<LoanDetails> findByLoanId(int id);
	
	List<LoanDetails> findByLoanStatus(String status);

}
