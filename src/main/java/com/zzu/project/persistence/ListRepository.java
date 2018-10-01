package com.zzu.project.persistence;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.zzu.project.domain.Approval;

public interface ListRepository extends CrudRepository<Approval, String>{
	
	public List<Approval> findApprovalById(String id);
	public List<Approval> findApprovalByIdx(int idx);
}
