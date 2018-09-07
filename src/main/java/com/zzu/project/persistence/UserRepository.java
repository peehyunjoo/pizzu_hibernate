package com.zzu.project.persistence;

import org.springframework.data.repository.CrudRepository;

import com.zzu.project.domain.User;

public interface UserRepository extends CrudRepository<User, String>{

}
