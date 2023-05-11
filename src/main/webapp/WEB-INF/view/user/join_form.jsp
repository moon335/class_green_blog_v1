<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
	<div class="container">
		<form action="/auth/userProc" method="post">
			<div class="form-group">
				<label for="username">username : </label> 
				<input type="text" name="username" class="form-control" value="홍1" id="username">
			</div>
			<div class="form-group">
				<label for="password">password : </label> 
				<input type="password" name="password" class="form-control" value="1234" id="password">
			</div>
			<div class="form-group">
				<label for="email">email : </label> 
				<input type="text" name="email" class="form-control" value="ccc@naver.com" id="email">
			</div>
			<button type="submit" id="btn--save" class="btn btn-primary">회원가입</button>
		</form>
	</div>
	<!-- 시큐리티 적용으로 form태그 사용 결정 -->
	<!-- <script src="/js/user.js"></script> -->
<%@ include file="../layout/footer.jsp" %>
