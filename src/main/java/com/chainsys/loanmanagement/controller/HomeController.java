package com.chainsys.loanmanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.loanmanagement.model.SignIn;
import com.chainsys.loanmanagement.model.UserDetails;
import com.chainsys.loanmanagement.service.UserDetailsService;

@Controller
@RequestMapping("/home")
public class HomeController {
	@Autowired
	private UserDetailsService userdetailservice;

	@GetMapping("/signin")
	public String signInPage(Model model) {
		SignIn signin = new SignIn();
		model.addAttribute("signin", signin);
		return "login-form";
	}

	@GetMapping("/newuserregistration")
	public String newuserregistration(Model mode) {
		return "redirect:/user/add-user-registration-form";
	}
	
	    @GetMapping("/index")
	    public String getIndex(Model model) {
	        return "loanmanagement-index";
	    }
	    
	    @GetMapping("/loanmanagementhomepage")
	    public String homePageLoanManagement()
	    {
	    	return "loanmanagement-system-home";
	    	//return "login-form";
	    	// return "loan-customer-form2";
	    	//return "admin-page-loanmanagement";
	    }
	    
	    @GetMapping("/customerform")
	    public String customerPage(Model model)
	    {
	    	return "loan-customer-form2";
	    	// return "customer-form";
	    }
	    
	    @GetMapping("/adminpage")
	    public String adminPage()
	    {
	    	return "admin-page-loanmanagement";
	    }
	    
	    @PostMapping("/userpage")
		public String userPage(@ModelAttribute("signin") SignIn signin, Model model) {
			UserDetails userdetails = userdetailservice.findUserById(signin.getUserId());
			model.addAttribute("userId", userdetails.getUserId());
			if (userdetails.getPassword().equals(signin.getPassword())) 
			{
				if (userdetails.getRole().equalsIgnoreCase("user")) 
				{
					return "redirect:/home/customerform";

				} else if (userdetails.getRole().equalsIgnoreCase("admin")) {
					return "redirect:/home/adminpage";
				}
			} else {
				model.addAttribute("message", "Somthing Wrong ");
				return "login-form";
			}
			return "login-form";
	    
	    
	}

}
