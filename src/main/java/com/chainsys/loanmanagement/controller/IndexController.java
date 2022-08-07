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
public class IndexController {
	@Autowired
	private UserDetailsService userdetailservice;

	@GetMapping("/signin")
	public String signInPage(Model model) {
		SignIn signin = new SignIn();
		model.addAttribute("signin", signin);
		return "users-login-form1";
	}

	@GetMapping("/newuserregistration")
	public String newuserregistration(Model mode) {
		return "redirect:/user/add-user-registration-form";
	}
	
	    @GetMapping("/index")
	    public String getIndex(Model model) {
	        return "loanmanagement-index";
	    }
	    
	    @PostMapping("/userpage")
		public String userPage(@ModelAttribute("signin") SignIn signin, Model model) {
			UserDetails userdetails = userdetailservice.findUserById(signin.getUserId());
			if (userdetails.getPassword().equals(signin.getPassword())) 
			{
				if (userdetails.getRole().equalsIgnoreCase("user")) 
				{
					return "redirect:/user/getallusers";

				} else if (userdetails.getRole().equalsIgnoreCase("admin")) {
					return "redirect:/user/getallusers";
				}
			} else {
				model.addAttribute("message", "Somthing Wrong ");
				return "users-login-form1";
			}
			return "users-login-form1";
	    
	    
	}

}
