package com.code2.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.UserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.code2.demo.entity.CrmUser;

@Controller
@RequestMapping("/register")
public class RegisterController {
	
	@Autowired
	private UserDetailsManager userDetailsManager;
	
	private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	
	@RequestMapping("/showRegistrationForm")
	public String showRegisterForm(Model model) {
		model.addAttribute("crmUser",new CrmUser());
		return "register-form";
	}
	
	@RequestMapping("/processRegistrationForm")
	public String showProcessRegistrationForm(@ModelAttribute("crmUser") CrmUser crmUser) {
		
		String encodedPassword = passwordEncoder.encode(crmUser.getPassword());
		
		String password = "{bcrypt}"+encodedPassword;
		String username = crmUser.getUserName();
		
		List<GrantedAuthority> autorities = AuthorityUtils.createAuthorityList("ROLE_ADMIN");
		User myUser = new User(username, password, autorities);
		userDetailsManager.createUser(myUser);
		return "registration-confirmation";
	}

}
