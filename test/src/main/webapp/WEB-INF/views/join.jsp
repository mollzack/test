<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join.jsp</title>

<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<style type="text/css">
	   *{font-size: 16pt; font-weight: bold; }
	   a{text-decoration:none;font-size: 16pt; font-weight: bold; }
	   a:hover{text-decoration:underline;font-size: 16pt; font-weight: bold; color:blue; }
	</style>
<style>


table {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border: 1px;
	width: 880px;
}

table th {
	vertical-align: middle;
	border: 1px solid;
	border-color: black;
	background-color: #d81806;
	color: white;
	text-align: center;
	width: 33%;
}

table td {
	vertical-align: top;
	border: 1px solid;
	width: 66%;
}

table a {
	color: black;
	font-weight: bold;
	font-size: 15pt;
}

#jayu {
	margin-top: 2%;
	margin-bottom: 2%;
	text-align: left;
	color: #d81806;
	font-size: 40pt;
}

.btn span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.btn span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

.btn:hover span {
	padding-right: 25px;
}

.btn:hover span:after {
	opacity: 1;
	right: 0;
}


.col_middle {
	width: 882px;
	margin: auto;
}

.btn {
	border: 2px solid black;
	background-color: white;
	color: black;
	padding: 10px 20px;
	font-size: 16px;
	cursor: pointer;
	border-radius: 5px;
	width: 16%;
}

/* Green */
.success {
	border-color: #d81806;
	color: #d81806;
}

.success:hover {
	background-color: #d81806;
	color: white;
}

/*contents*/
.classrow {
	text-align: center;
}

.classrow:after {
	content: "";
	display: table;
	clear: both;
}

.classcolumn {
	float: left;
	padding: 10px;
}

.classcolumn.side {
	padding-top: 80px;
	width: 25%;
}

.classcolumn.middle {
	width: 880px;
	
}
.title{
	text-align: center;
	padding: 0;
	
}
</style>

<script>

function idCheck(){
	var idCheck = RegExp(/^[A-Za-z0-9]{3,12}$/);
	//영문 대.소문자, 숫자만 입력 가능하고 6에서 12자리를 입력했는지 체크한다
	
	if ($("#id").val() == "") {
			$("#idspan").html("<font size='1' color='red'>아이디를 입력해주세요</font>");
			$("#id").focus();
			return false;
		}

		//id의 유효성 검사
		if (!idCheck.test($("#id").val())) {
			$("#idspan").html("<font size='1' color='red'>3~12자리 영문,숫자 형식에 맞게 입력해주세요 </font>");
			$("#id").focus();
			return false;
		} else {
			$("#idspan").html(" ");		
		}
		
	window.open("idcheckwindow.do","checkcheck", "width=400, height=300");
	
}

 function check() {

	if(document.bw.id.value==""){
		alert("아이디를 입력하세요");
		document.bw.id.focus();
		return false;
 }
 
 	else if(document.bw.pass.value==""){
 		alert("비밀번호를 입력하세요");
 		document.bw.pass.focus();
 		return false;
 }
 	else if(document.bw.pass2.value==""){
 		alert("비밀번호확인을 입력하세요");
 		document.bw.pass2.focus();
 		return false;
 }
 	else if(document.bw.name.value==""){
		alert("이름을 입력하세요");
		document.bw.name.focus();
		return false;
 }
 	else if(bw.phone2.value==""){
		 alert("번호를 입력하세요");
		 document.bw.phone2.focus();
		 return false;
 }
 	else if(bw.phone3.value==""){
		 alert("번호를 입력하세요");
		 document.bw.phone3.focus();
		 return false;
}
 
	if(document.bw.pass.value!=document.bw.pass2.value){
	 //비밀번호와 비밀번호확인의 값이 다를 경우
		 alert("입력한 2개의 비밀번호가 일치하지 않습니다.");
	 	 document.bw.pass.focus();
		 return false;
}
	alert("회원가입을 축하드립니다!");
 	document.bw.submit();
}



 
 function cancel(){
	
	location.href = "join.do";
	
}
</script>
</head>
<body>
<div class="classrow">
		<div class="classcolumn side"></div>
		<div class="classcolumn middle">
			<div class="title">
				
			</div>

    <div id="jayu"> 회원가입 </div>
   
	
	 <form name="bw" action="insertjoin.do" method="post" >
	 <table border="1">
	 <tbody>
	 	<tr>
	 	<th>아이디 </th>
	 	<td>
	 	<input  type="text" id="id" name="id" style="width: 400px" >
	 	<input type="button" value="중복체크" id="dplbtn" onclick="idCheck()"><br> 
	 	</td>
	 	<span id="idspan"><font size="1pt" color="gray">id를 입력한 뒤 중복체크를 해주세요</font></span>
	 	</tr>
	 	<tr>
	 	<th>비번 </th>
	 	<td><input  type="password" name="pass" style="width: 588px"> </td>
	 	</tr>
	 	<tr>
	 	<th>비번2 </th>
	 	<td><input  type="password" name="pass2" style="width: 588px"> </td>
	 	</tr>
	 	<tr>
	 	<tr>
	 	<th>이름 </th>
	 	<td><input  type=text name="name" style="width: 588px"> </td>
	 	</tr>
	 	<tr>
	  	<th>휴대폰 </th>
		<td>
			<input id="hp1" name="phone1" type="text" style="width: 150px" value="010">-
			<input id="hp2" name="phone2" type="text" style="width: 150px">-
			<input id="hp3" name="phone3" type="text" style="width: 150px">
		</td>
		</tr>
		<tr>
	 	<th>성별 </th>
	 	<td>
	 	<input id="gender" name="gender"  value="M" type="radio">
	 	<label for="gender">남자</label>
	 	<input id="gender" name="gender"   value="F" type="radio">
	 	<label for="gender">여자</label>
	 	 </tbody> 
	 	  </table>
	 	   
	 	  <br>
	 	  	<div id="col_middle" align="right"> 
	 		<button class="btn success" onclick="check(); return false;"><span>등록 </span></button>
			<button class="btn success" onclick="cancel(); return false;"><span>취소 </span></button>
			<button class="btn success" onclick="location.href='index.jsp'; return false;"><span>홈페이지 </span></button>
	 	
	  </div> 
	
		<div class="classcolumn side"></div>
 </form>	
</div>
</div>

</body>
</html>













