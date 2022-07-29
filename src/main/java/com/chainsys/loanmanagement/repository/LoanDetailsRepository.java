package com.chainsys.loanmanagement.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.loanmanagement.pojo.LoanDetails;

public interface LoanDetailsRepository extends CrudRepository <LoanDetails,Integer>{
	LoanDetails findById (int id);
	LoanDetails save (LoanDetails lod);
	void deleteById(int lod_id);
	List <LoanDetails> findAll();

}
