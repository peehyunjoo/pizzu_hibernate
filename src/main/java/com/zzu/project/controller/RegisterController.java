package com.zzu.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.zzu.project.domain.User;
import com.zzu.project.persistence.UserRepository;

import lombok.extern.java.Log;

@Log
@Controller
public class RegisterController {

	@Autowired
	private UserRepository repo;
	
	@GetMapping("/main")
	public String main(Model model) {
		return "main";
	}
	

	@GetMapping("/join")
	public String join(Model model) {
		return "join";
	}
	
	@PostMapping("/join")
	public String join(@ModelAttribute("vo")User vo, RedirectAttributes rttr) {
		log.info("*********"+vo);
		repo.save(vo);
		rttr.addFlashAttribute("msg","success");
		
		return "redirect:/main";
	}
	
	
}



