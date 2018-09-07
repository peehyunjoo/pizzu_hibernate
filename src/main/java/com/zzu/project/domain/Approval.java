package com.zzu.project.domain;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name ="approval")
public class Approval {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int idx;
	private String id;
	private int type;
	private String title;
	private String content;
	private int price;
	private Date reg_date;

}
