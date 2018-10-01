package com.zzu.project.domain;

//import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="admission")
public class Admission {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int idx;
	private int approval_num;
	private String content;
	private String confirm;
	//private Date reg_date;
}
