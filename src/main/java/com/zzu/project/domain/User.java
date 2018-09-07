package com.zzu.project.domain;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "user")
public class User {

		@Id
		//@GeneratedValue(strategy = GenerationType.AUTO)
		private String id;
		private String pwd;
		private int level;
		
		
}
