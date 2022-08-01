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

import com.chainsys.loanmanagement.model.LoanDetails;
import com.chainsys.loanmanagement.service.LoanDetailsService;

@Controller
@RequestMapping("/loandetails")
public class LoanDetailsController {
	
	@Autowired
	private LoanDetailsService loandetservice;
	
	@GetMapping("/addloandetailsform")
	public String userAddForm(Model model)
	{
		LoanDetails loandet = new LoanDetails();
		model.addAttribute("addloandetails",loandet);
		return  "add-loandetails-form";
	}
	
	@PostMapping("/addloandetails")
	public String addnewusers(@ModelAttribute("addloandetails") LoanDetails loandet)
	{
		loandetservice.saveLoanDetails(loandet);
		return "redirect:/loandetails/getallloandetails";
	}
	@GetMapping("/updateloandetails")
	public String showUpdateForm(@RequestParam("loanid") int id,Model model)
	{
		LoanDetails loandet=loandetservice.findLoanDetailsById(id);
		model.addAttribute("updateloandetails", loandet);
		return "update-loandetails-form";
	}
    @PostMapping("/updateloandetails")
	public String updateuser(@ModelAttribute("updateloandetails") LoanDetails loanid) {
    	loandetservice.saveLoanDetails(loanid);
		return "redirect:/loandetails/getallloandetails";
	}
    @GetMapping("/deleteloandetails")
   	public String deleteuser(@RequestParam("loanid") int id) {
    	loandetservice.deleteLoanDetailsById(id);
   		return "redirect:/loandetails/getallloandetails";
   	}
       @GetMapping("/findloandetailsbyid")
   	public String findUserById(@RequestParam("loanid") int id, Model model) {
    	   LoanDetails loandet= loandetservice.findLoanDetailsById(id);
       	model.addAttribute("findloandetailsbyid", loandet);
   		return "find-loandeteailsby-id";
   	}
       @GetMapping("/getallloandetails")
   	public String getAllLoanDetails(Model model)
   	{
   		List <LoanDetails> loandetailslist = loandetservice.getloanDetails();
   		model.addAttribute("getallloandetails", loandetailslist);
   		return "get-all-loandetails";
   	}
	
}

