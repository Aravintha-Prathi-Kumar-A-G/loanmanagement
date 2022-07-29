package com.chainsys.loanmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.loanmanagement.pojo.UserDetails;
import com.chainsys.loanmanagement.repository.UserDetailsRepository;


@Service
public class UserDetailsService {
	 @Autowired
	 private UserDetailsRepository  repo;
	   
	 public List<UserDetails> getUsers() {
	        List<UserDetails> userList = repo.findAll();
	        return userList;
	    }
	    public UserDetails save(UserDetails userde) {
	        return repo.save(userde);
	    }

	    public UserDetails findById(int id) {
	        return repo.findById(id);
	    }
	    public void deleteById(int id) {
	        repo.deleteById(id);
	    }

}
