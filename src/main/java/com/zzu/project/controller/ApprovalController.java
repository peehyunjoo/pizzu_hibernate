package com.zzu.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.zzu.project.domain.Admission;
import com.zzu.project.domain.Approval;
import com.zzu.project.persistence.AdmissionRepository;
import com.zzu.project.persistence.ApprovalRepository;
import com.zzu.project.persistence.ListRepository;

import lombok.extern.java.Log;

@Log
@Controller
public class ApprovalController { 

	
	@Autowired
	private ApprovalRepository repo;
	
	@Autowired
	private AdmissionRepository adm_repo;
	@Autowired
	private ListRepository list_repo;
	
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
	@GetMapping("/list")
	public void list(Model model) {
		String id = "hwi";
		List<Approval> list = list_repo.findApprovalById(id);
		log.info("******"+list);
		model.addAttribute("list",list);
		
	}
	
	@GetMapping("/admission")
	public void admission(Model model, @RequestParam(value = "idx")int idx) {
		int res_idx = idx;
		log.info("^^^^"+res_idx);
		List<Approval> list = list_repo.findApprovalByIdx(res_idx);
		log.info("******"+list);
		model.addAttribute("admission",list);
	}
	
	@PostMapping("/admission")
	public String admission(@ModelAttribute("vo")Admission vo, RedirectAttributes rttr) {
		log.info("admission=====>"+vo);
		adm_repo.save(vo);
		rttr.addFlashAttribute("msg","success");
		return "list";
	}
	
}
