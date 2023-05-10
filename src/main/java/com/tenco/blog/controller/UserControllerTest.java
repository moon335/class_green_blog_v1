package com.tenco.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tenco.blog.model.User;
import com.tenco.blog.repository.UserRepository;

@Controller
public class UserControllerTest {
	
	@Autowired
	private UserRepository userRepository;
	
	// 1. key=value
	@PostMapping("/temp/join")
	public String join(String username, String password, String email) {
		// 유효성 검사
		User reqUser = new User();
		reqUser.setUsername(username);
		reqUser.setEmail(email);
		reqUser.setPassword(password);
		
		return "/index";
	}
	
	// 1. object Mapper 통해서 바로 객체로 파싱하기
	@PostMapping("/temp/join2")
	// 안해주면 ajax 통신시 restcontroller가 아니라 controller 어노테이션 사용했기 때문에 오류 발생
	@ResponseBody // 페이지 리턴이 아니라 데이터를 리턴하라는 명령
	public User join(@RequestBody User reqUser) {
		// 유효성 검사
		System.out.println(reqUser);
		userRepository.save(reqUser);
		return reqUser;
	}
	
	@GetMapping("/temp/index")
	public String indexPage() {
		return "/index";
	}
	
} // end of class
