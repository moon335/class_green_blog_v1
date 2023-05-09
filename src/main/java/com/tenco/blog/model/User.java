package com.tenco.blog.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

@Entity
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(nullable = false, length = 30)
	private String username;
	@Column(nullable = false, length = 100)
	private String password;
	@Column(nullable = false, length = 50)
	private String email;
	
	@ColumnDefault("'user'") // 문자열 타입이라고 명시는 ''
	private String role; // 도메인 정하기(데이터의 범주화) user, admin, manager
	
	@CreationTimestamp // 자동 시간 입력 now()
	private Timestamp createdDate;
	
	
} // end of class
