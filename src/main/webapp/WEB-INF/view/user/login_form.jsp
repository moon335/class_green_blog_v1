<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
	<div class="container">
		<form action="/auth/loginProc" method="post">
			<div class="form-group">
				<label for="username">username : </label> 
				<input type="text" name="username" class="form-control" value="홍1" id="username">
			</div>
			<div class="form-group">
				<label for="password">password : </label> 
				<input type="password" name="password" class="form-control" value="1234" id="password">
			</div>
			<button type="submit" id="btn--login" class="btn btn-primary">로그인</button>
		</form>
	</div>
	<!-- <script src="/js/user.js"></script> -->
<%@ include file="../layout/footer.jsp" %>
