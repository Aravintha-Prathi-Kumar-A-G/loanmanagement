package com.chainsys.loanmanagement.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.loanmanagement.pojo.LoanEMIdetails;

public interface LoanEMIdetailsRepository extends CrudRepository <LoanEMIdetails,Integer>{
	LoanEMIdetails findById (int id);
	LoanEMIdetails save (LoanEMIdetails loemi);
	void deleteById(int loemi_id);
	List <LoanEMIdetails> findAll();

}
