package com.chainsys.loanmanagement.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.loanmanagement.model.Loan;

public interface LoanRepository extends CrudRepository <Loan,Integer>{
	Loan findById (int id);
	Loan save (Loan loan);
	// Used for both adding new Loan and Modifying new Loan
	void deleteById(int loanId);
	List <Loan> findAll();

}

