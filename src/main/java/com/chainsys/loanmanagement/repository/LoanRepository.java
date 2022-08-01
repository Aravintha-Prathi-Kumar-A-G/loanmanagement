package com.chainsys.loanmanagement.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.loanmanagement.model.Loan;

public interface LoanRepository extends CrudRepository <Loan,Integer>{
	Loan findById (int id);
	Loan save (Loan lo);
	// Used for both adding new Loan and Modifying new Loan
	void deleteById(int lo_id);
	List <Loan> findAll();

}

