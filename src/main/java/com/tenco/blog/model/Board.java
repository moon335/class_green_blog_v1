package com.tenco.blog.model;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

@Entity
public class Board {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(nullable = false, length = 100)
	private String title;
	@Lob // 대용량 데이터가 들어가야할 때
	private String content;
	@ColumnDefault("0") // 숫자형은 - "숫자"
	private int count;
	// Board 와 User의 관계는 N : 1 관계
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;
	
	// 리플에 대한 정보가 없음 !!!
	// Board 정보를 가지고 올 때 댓글 정보도 가지고 와야 된다면
	// Board 와 Reply의 관계는 1 : N
	// 주의 : Board 테이블에 reply_id 컬럼이 필요한가(x)
	// 그럴 경우 mappedBy 설정해주기 -> board 테이블에 컬럼이 생성되지 않는다
	// 오브젝트가 생성될 때 즉 데이터를 가지고 올때 알아서 join처리 후 데이터만 가지고 온다
	@OneToMany(mappedBy = "board", fetch = FetchType.EAGER) // 기본값
	private List<Reply> reply;
	
	@CreationTimestamp
	private Timestamp createdDate;
	
} // end of class
