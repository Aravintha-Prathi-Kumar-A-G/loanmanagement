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

import com.chainsys.loanmanagement.businesslogic.Logic;
import com.chainsys.loanmanagement.model.LoanDetails;
import com.chainsys.loanmanagement.model.LoanEMIdetails;
import com.chainsys.loanmanagement.service.LoanEMIService;
import com.chainsys.loanmanagement.service.LoanDetailsService;

@Controller
@RequestMapping("/emi")
public class LoanEMIcontroller {
	
	@Autowired
	private LoanEMIService loanemiservice;
	@Autowired
	private LoanDetailsService loanDetailsService;
	@GetMapping("/addemidetailsform")
	public String emiDetailsAddForm(@RequestParam("id")int id,Model model)
	{
		LoanEMIdetails emidetails = new LoanEMIdetails();
		LoanDetails loanDetails=loanDetailsService.findLoanDetailsById(id);
		emidetails.setUserId(id);
		emidetails.setLoanId(loanDetails.getLoanId());
		emidetails.setPaymentAmount((int)loanDetails.getMonthlyEMIAmount());
		emidetails.setEmiDate(Logic.getInstanceDate());
		model.addAttribute("addemidetails",emidetails);
		return  "add-emi-details-form";
	}
	
	@PostMapping("/addemidetails")
	public String addNewEmiDetails(@ModelAttribute("addemidetails") LoanEMIdetails emiDetails)
	{
		loanemiservice.saveEmi(emiDetails);
		int id=emiDetails.getUserId();
		return "redirect:/home/customerform?userId="+id;
	}
	@GetMapping("/updateemidetailsform")
	public String emiUpdateForm(@RequestParam("userid") int id,Model model)
	{
		LoanEMIdetails loandetails=loanemiservice.findEmiById(id);
		model.addAttribute("updateemidetails", loandetails);
		return "update-emi-details-form";
	}
    @PostMapping("/updateemidetails")
	public String updateEmi(@ModelAttribute("updateemidetails") LoanEMIdetails loanId) {
    	loanemiservice.saveEmi(loanId);
		return "redirect:/emi/getallloanemidetails";
	}
    @GetMapping("/deleteemidetails")
   	public String deleteEmi(@RequestParam("userid") int id) {
    	loanemiservice.deleteEmiById(id);
   		return "redirect:/emi/getallloandetails";
   	}
       @GetMapping("/findemidetailsbyid")
   	public String findEmiById(@RequestParam("userid") int id, Model model) {
    	   LoanEMIdetails loanemidetails= loanemiservice.findEmiById(id);
       	model.addAttribute("findemidetailsbyid", loanemidetails);
   		return "find-emi-detailsby-id";
   	}
       @GetMapping("/getallloanemidetails")
   	public String getAllEmiDetails(Model model)
   	{
   		List <LoanEMIdetails> emidetailslist = loanemiservice.getEmiDetails();
   		model.addAttribute("getallloanemidetails", emidetailslist);
   		return "get-all-emi-details";
   	}

}
