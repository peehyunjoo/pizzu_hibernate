package com.zzu.project;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.zzu.project.domain.User;
import com.zzu.project.persistence.UserRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
public class UserRepositoryTests {

	@Autowired
	private UserRepository userRepo;
	
	@Test
	public void testInsert() {
		User user = new User();
		user.setId("123");
		user.setPwd("123");
		user.setLevel(1);
		
		userRepo.save(user);
		
	}
}
