package com.zzu.project.persistence;

import org.springframework.data.repository.CrudRepository;

import com.zzu.project.domain.Approval;

public interface ApprovalRepository extends CrudRepository<Approval, Long>{

	
}
