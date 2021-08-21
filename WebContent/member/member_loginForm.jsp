<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<script type="text/javascript">
function fnJoin(){
	if(confirm("회원가입하시겠습니까?")){
		location.href="member_joinForm.me";
	}
	return false;
}
</script>
</head>
<body>
<form action="">
	<div id="container">
		<h3>로그인</h3>
		<div class="idbox">
			<div>아이디</div>
			<div><input type="text" name="id" id="id"></div>
		</div>
		<div>
			<div>비밀번호</div>	
			<div><input type="password" name="pw" id="pw"></div>
		</div>
		<div>
			<input type="submit" value="로그인">
			<input type="button" value="회원가입" onclick="fnJoin()">
		</div>
	</div>
</form>
</body>
</html>