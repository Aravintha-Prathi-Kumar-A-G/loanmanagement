package com.chainsys.loanmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.loanmanagement.dto.UserDetailsAndLoanEMIdetailsDTO;
import com.chainsys.loanmanagement.dto.UserDetailsLoanDetailsDTO;
import com.chainsys.loanmanagement.model.UserDetails;
import com.chainsys.loanmanagement.service.UserDetailsService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserDetailsService userservice;
	
	@GetMapping("/adduserform")
	public String userAddForm(Model model)
	{
		UserDetails userdetails = new UserDetails();
		model.addAttribute("adduser",userdetails);
		return  "add-user-registration-form";
	}
	
	@PostMapping("/adduserdetails")
	public String addNewUsers(@ModelAttribute("adduser") UserDetails user1)
	{
		userservice.saveUser(user1);
		return "redirect:/home/loanmanagementhomepage";
	}
	
	 @GetMapping("/updateuserdetails")
     public String updateUserDetails()
     {
  	   return "customer-update-byuserid";
     }
     
	 
	@GetMapping("/updateuserform")
	public String showUpdateForm(@RequestParam("userId") int id,Model model)
	{
		UserDetails userdetails=userservice.findUserById(id);
		model.addAttribute("updateuser", userdetails);
		return "update-user-form";
	}
    @PostMapping("/updateuser")
	public String updateuser(@ModelAttribute("updateuser") UserDetails userid) {
    	userservice.saveUser(userid);
		return "redirect:/home/loanmanagementhomepage";
	}
    @GetMapping("/deleteuserbyid")
   	public String deleteuser(@RequestParam("userid") int id) {
    	userservice.deleteUserById(id);
   		return "redirect:/user/getallusers";
   	}
       @GetMapping("/finduserbyid")
   	public String findUserById(@RequestParam("userid") int id, Model model) {
    	   UserDetails userdetails= userservice.findUserById(id);
       	model.addAttribute("finduserbyid", userdetails);
   		return "find-userby-id";
   	}
       @GetMapping("/getallusers")
   	public String getAllUserDetails(Model model)
   	{
   		List <UserDetails> userslist = userservice.getUsersDetails();
   		model.addAttribute("getallusers", userslist);
   		return "get-all-users";
   	}
       @GetMapping("/userlogin")
       public String userLogin() {
    	   return "loginform";
       }
       
       @GetMapping("/viewLoanDetailsanduserdetails")
       public String viewLoanDetailsAndUserDetailsByUserId()
       {
    	   return "view-loan-details-byuserid";
       }
       
       
       @GetMapping("/getloandetailsbyuserid")
       public String getLoanDetailsByUserId(@RequestParam("userId")int id,Model model)
       {
    	   UserDetailsLoanDetailsDTO dto =userservice.getUserDetailsLoanDetails(id);
           model.addAttribute("getuserdetails" ,dto.getUserdetails());
           model.addAttribute("loandetails",dto.getLoanlist());
           return "list-userdetails-loandetails";
    	   
       }
       @GetMapping("/viewformuserandemidetails")
       public String viewUserdetailsAndEMIdetails()
       {
    	   return "view-user-emi-byuserid";
       }
       
       @GetMapping("/getemidetailsbyuserid")
       public String getEMIdetailsByUserId(@RequestParam("userId") int id,Model model) {
    	   UserDetailsAndLoanEMIdetailsDTO useremidto =userservice.getUserDetailsAndLoanEMIdetails(id);
           model.addAttribute("getuser" ,useremidto.getUserdetails());
           model.addAttribute("loanemidetails",useremidto.getLoanemidetails());
           return "list-userdetails-emidetails-byid";
       }
	
}
