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

import com.chainsys.loanmanagement.dto.LoanAndLoanDetailsDTO;
import com.chainsys.loanmanagement.dto.LoanAndLoanEMIdetailsDTO;
import com.chainsys.loanmanagement.model.Loan;
import com.chainsys.loanmanagement.service.LoanService;

@Controller
@RequestMapping("/loan")
public class LoanController {

@Autowired
private LoanService loanservice;
	
	@GetMapping("/addloanform")
	public String loanAddForm(Model model)
	{
		Loan loan = new Loan();
		model.addAttribute("addnewloan",loan);
		return  "add-loan-form";
	}
	
	@PostMapping("/addloan")
	public String addNewLoan(@ModelAttribute("addnewloan") Loan loan)
	{
		loanservice.saveLoan(loan);
		return "redirect:/loan/getallloan";
	}
	
	@GetMapping("/adminupdateloan")
	public String adminUpdateLoan()
	{
		return "admin-update-loan";
	}
	
	@GetMapping("/updateloan")
	public String loanUpdateForm(@RequestParam("loanid") int id,Model model)
	{
		Loan loan=loanservice.findLoanById(id);
		model.addAttribute("updateloan", loan);
		return "update-loan-form";
	}
    @PostMapping("/updateloan")
	public String updateloan(@ModelAttribute("updateloan") Loan loanid) {
    	loanservice.saveLoan(loanid);
		return "redirect:/loan/getallloan";
	}
    @GetMapping("/deleteloan")
   	public String deleteloan(@RequestParam("loanid") int id) {
    	loanservice.deleteLoanById(id);
   		return "redirect:/loan/getallloan";
   	}
       @GetMapping("/findloanbyid")
   	public String findLoanById(@RequestParam("loanid") int id, Model model) {
    	   Loan loandet= loanservice.findLoanById(id);
       	model.addAttribute("findloanbyid", loandet);
   		return "find-loanby-id";
   	}
       @GetMapping("/getallloan")
   	public String getAllLoan(Model model)
   	{
   		List <Loan> loanlist = loanservice.getAllLoan();
   		model.addAttribute("getallloan", loanlist);
   		return "get-all-loan";
   	}
	
   	@GetMapping("/getloandetailsbyloan")
    public String getLoanDetails(@RequestParam("loanid") int id,Model model) {
   		LoanAndLoanDetailsDTO dto =loanservice.getLoanAndLoanDetails(id);
        model.addAttribute("getloan" ,dto.getLoan());
        model.addAttribute("loandetails",dto.getLoanlist());
        return "list-loan-loandetails";
    }

	@GetMapping("/getemidetailsbyloan")
    public String getEMIdetails(@RequestParam("loanid") int id,Model model) {
		LoanAndLoanEMIdetailsDTO dtoemi =loanservice.getLoanAndLoanEMIdetails(id);
        model.addAttribute("getloan" ,dtoemi.getLoan());
        model.addAttribute("emilist",dtoemi.getEmidetails());
        return "list-loan-emidetails";
    }
}
