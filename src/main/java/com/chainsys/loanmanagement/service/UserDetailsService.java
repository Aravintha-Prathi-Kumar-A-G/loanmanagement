package com.chainsys.loanmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.loanmanagement.model.UserDetails;
import com.chainsys.loanmanagement.repository.UserDetailsRepository;


@Service
public class UserDetailsService {
	 @Autowired
	 private UserDetailsRepository  userdetailsrepo;
	   
	 public List<UserDetails> getUsersDetails() {
	        List<UserDetails> userList = userdetailsrepo.findAll();
	        return userList;
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

}
