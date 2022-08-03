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

import com.chainsys.loanmanagement.model.LoanEMIdetails;
import com.chainsys.loanmanagement.service.LoanEMIService;

@Controller
@RequestMapping("/emi")
public class LoanEMIcontroller {
	
	@Autowired
	private LoanEMIService loanemiservice;
	
	@GetMapping("/addemidetailsform")
	public String emiDetailsAddForm(Model model)
	{
		LoanEMIdetails emidetails = new LoanEMIdetails();
		model.addAttribute("addemidetails",emidetails);
		return  "add-emi-details-form";
	}
	
	@PostMapping("/addemidetails")
	public String addNewEmiDetails(@ModelAttribute("addemidetails") LoanEMIdetails emidetails)
	{
		loanemiservice.saveEmi(emidetails);
		return "redirect:/emi/getallloanemidetails";
	}
	@GetMapping("/updateemidetails")
	public String emiUpdateForm(@RequestParam("loanid") int id,Model model)
	{
		LoanEMIdetails loandetails=loanemiservice.findEmiById(id);
		model.addAttribute("updateemidetails", loandetails);
		return "update-emi-details-form";
	}
    @PostMapping("/updateemidetails")
	public String updateEmi(@ModelAttribute("updateemidetails") LoanEMIdetails loanid) {
    	loanemiservice.saveEmi(loanid);
		return "redirect:/emi/getallloanemidetails";
	}
    @GetMapping("/deleteemidetails")
   	public String deleteEmi(@RequestParam("loanid") int id) {
    	loanemiservice.deleteEmiById(id);
   		return "redirect:/emi/getallloandetails";
   	}
       @GetMapping("/findemidetailsbyid")
   	public String findEmiById(@RequestParam("loanid") int id, Model model) {
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
