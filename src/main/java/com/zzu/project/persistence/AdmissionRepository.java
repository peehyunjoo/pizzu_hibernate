package com.zzu.project.persistence;

import org.springframework.data.repository.CrudRepository;

import com.zzu.project.domain.Admission;

public interface AdmissionRepository extends CrudRepository<Admission, Long>{

	
}
