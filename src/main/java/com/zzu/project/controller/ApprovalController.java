package com.zzu.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.zzu.project.domain.Approval;
import com.zzu.project.persistence.ApprovalRepository;

import lombok.extern.java.Log;

@Log
@Controller
public class ApprovalController { 

	
	@Autowired
	private ApprovalRepository repo;
	
	@GetMapping("/approval")
	public String approval(Model model) {
		return "approval";
	}
	@PostMapping("/approval")
	public String register(@ModelAttribute("vo")Approval vo, RedirectAttributes rttr) {
		log.info("*********"+vo);
		vo.setId("hwi");
		repo.save(vo);
		rttr.addFlashAttribute("msg","success");
		return "approval";
		
	}
}
