package com.blackhawk.vtt.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.blackhawk.vtt.dao.VolunteerCredentialDAO;
import com.blackhawk.vtt.model.VolunteerCredential;

@Controller
public class LoginController {

	@Autowired
	private VolunteerCredentialDAO volunteerCredentialDAO;
	
	@GetMapping("/")
	public String loginForm(Locale locale, Model model) {
		return "login";
	}
	
	@ModelAttribute("volunteerCredential")
	public VolunteerCredential formBackingObject() {
		return new VolunteerCredential();
	}
	
	@PostMapping("/loginUser")
	public String login(@ModelAttribute("volunteerCredential") VolunteerCredential volunteerCredential, BindingResult result, Model model){
		VolunteerCredential vc = this.volunteerCredentialDAO.login(volunteerCredential.getUsername(), volunteerCredential.getPassword());
		if(vc != null) {
			model.addAttribute("volunteerCredential", vc);
			return "main";
		} else {
			return "redirect:/";
		}
	}
}
