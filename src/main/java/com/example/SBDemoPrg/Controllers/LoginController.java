package com.example.SBDemoPrg.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.SBDemoPrg.Entity.LoginDetailsEntity;
import com.example.SBDemoPrg.Repository.LoginRepo;



@Controller
@RequestMapping("/login")
public class LoginController {
	 
	@Autowired
	private LoginRepo loginrepo;
	
	@GetMapping
	private String loginpage() {
		return "loginpage";
	}
	@GetMapping("/getdetails")
	private String getdetails() {
		return "index";
	}
	@GetMapping("/get-login-details")
	private String getlogindetails(
			@RequestParam("uname") String uname,
			@RequestParam("password") String password,
			Model model) {
		List<LoginDetailsEntity> logininfo = loginrepo.findByusername(uname);
		for(LoginDetailsEntity logininfolist : logininfo)
		if( logininfolist.getPassword().equals(password))
		{
			return "StdHomePage";
		}
		return "ErrorPage";
	}
	@GetMapping("/signup")
	private String signup() {
		return "signin";
	}
	
	@PostMapping("/save-signup-details")
	private String savesignupdetails(
			@RequestParam String email,
			@RequestParam String username,
			@RequestParam String password,
			Model model) {
		LoginDetailsEntity logindetail = new LoginDetailsEntity(username,email,password);
		loginrepo.save(logindetail);
		return "loginpage";
	}
}
