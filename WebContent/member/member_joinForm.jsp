<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberJoin</title>
</head>
<body>
<div>
	<h3>회원가입</h3>
	<form action="">
		<div class="idbox box">
			<div>아이디</div>
			<div><input type="text" id="member_id" name="member_id" required="required"></div>
			<span id="idCheck_span"></span>
		</div>
		<div class="pwbox box">
			<div>비밀번호</div>
			<div><input type="password" id="member_pw" name="member_pw" required="required"></div>
			<span id="pwCheck_span"></span>
		</div>
		<div class="pwtwicebox box">
			<div>비밀번호 확인</div>
			<div><input type="password" id="chk_pw_twice" name="chk_pw_twice" required="required"></div>
			<span id="pwCheck_t_span"></span>
		</div>
		<div class="namebox box">
			<div>이름</div>
			<div><input type="text" id="member_name" name="member_name" required="required"></div>
		</div>
		<div class="agebox box">
			<div>나이</div>
			<div><input type="number" id="member_age" name="member_age" required="required"></div>
		</div>
		<div class="agebox box">
			<div>성별</div>
			<div>
				<input type="radio" name="member_gender" value="남">남자
				<input type="radio" name="member_gender" value="여" checked="checked">여자
			</div>
		</div>
		<div class="emailbox box">
			<div>이메일</div>
			<div>
				<input type="text" id="member_email" name="member_email" required="required">
				@<select>
					<option>직접입력</option>
					<option>naver.com</option>
					<option>gmail.com</option>
					<option>hanmail.net</option>
					<option>daum.net</option>
				</select>
			</div>
		</div>
		<div>
			<input type="submit" value="회원가입">
			<input type="reset" value="재작성">
			<input type="button" value="로그인으로 돌아가기" onclick="location.href='member_loginForm.me'">
		</div>
	</form>
</div>
</body>
</html>