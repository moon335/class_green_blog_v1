package com.tenco.blog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tenco.blog.model.User;
// @Repository // 원래 IoC의 대상이 되려면 이 어노테이션을 사용해야 하지만 여기서는 생략 가능 이유는 JpaRepository에서 이미 설정됨
//                                      JpaRepository<대상이 되는 테이블, pk 데이터 타입>
public interface UserRepository extends JpaRepository<User, Integer> {
	// select, select All, insert, update, delete 등을 만들어줌
	
	
} // end of class
