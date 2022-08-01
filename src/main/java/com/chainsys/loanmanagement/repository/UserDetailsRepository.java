package com.chainsys.loanmanagement.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.loanmanagement.model.UserDetails;

public interface UserDetailsRepository extends CrudRepository <UserDetails,Integer>{
	UserDetails findById (int id);
	UserDetails save (UserDetails usr);
	void deleteById(int usr_id);
	List <UserDetails> findAll();
}


