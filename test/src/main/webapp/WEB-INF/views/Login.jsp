<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title> [clothLogin.jsp]</title>
  <style type="text/css">
#login{
	text-align: center;
	margin-top: 40px;
}  

input  {
	width:400px;
	height:33px;	
}    
.btns {
border: none;
background-color: #d81806;
color: white;
}        
  </style>
 <script src="https://code.jquery.com/jquery-3.4.1.js"> </script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" ></script>
<script>
function nullCheck(){
	if(document.loginform.id.value==""){
		alert("아이디 입력");
		document.loginform.id.focus();
		return false;
		}
	else if(document.loginform.pass.value==""){
		alert("비번 입력");
		document.loginform.pass.focus();
		return false;
		}
	document.loginform.submit();
	

	


	
	
}
</script>  
</head>

<body>
 <div id="login">
 <img src="./resources/images/jordan.png" width=200><br><br>
 <form name="loginform" action="loginprocess.do" onsubmit="nullCheck(); return false;">
 		<input type="text" id="id" name="id" placeholder=" 아이디">
		<br><br>
 		<input type="password" id="pass" name="pass" placeholder=" 비밀번호">
		<br><br>
 	   <input type="submit" value="로그인" class="btns" >
</form>
 <input type="button" value="회원가입" class="btns" onclick="location.href='board.do'">
  
</div>


</body>
</html>
