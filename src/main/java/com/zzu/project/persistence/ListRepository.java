package com.zzu.project.persistence;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.zzu.project.domain.Approval;

public interface ListRepository extends CrudRepository<Approval, String>{
	//@Query("SELECT type, title, content, price, reg_date WHERE ")
	
	public List<Approval> findApprovalById(String id);
}
