<%@ page language="java"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>id check</title>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	
<link href="assets/css/theme.css" rel="stylesheet" />
<script type="text/javascript" src="assets/js/theme.js"></script>	
<script>
function firstload(){	
	var cid = $(opener.document).find("#id").val();
	$("#cid").val(cid);	
}
function sbmcheck(){
	idcheckform.submit();
	return false;
}
function resbmcheck(){
	var newval;

	newval = $("#cid").val();
	$(opener.document).find("#id").val(newval);
	idcheckform.submit();
	return false;
}
function recheck(){	
	$("#cid").val("");
	$("#asp").html("새로운 아이디를 입력한 후 중복확인 해주세요");
	$("#cid").attr('readonly',false);
	$("#recbtn").val('중복체크');	
	$("#recbtn").attr('onclick','resbmcheck()');	
}

function useID(){
	//팝업창에서 입력한 값을 부모창으로 전달
	var myid = $("#cid").val();
	$(opener.document).find("#id").val(myid);	
	$(opener.document).find("#cidspan").html("<font size='1' color='gray'>사용가능한 아이디입니다</font>");

	opener.flaga=true;
	window.close();
}

function cancel(){	
	window.close();
}


</script>
</head>
<body onload="firstload()">
<h2>아이디 중복체크 </h2>

<form action="idcheck.do" name="idcheckform">
	<input type="text" value="" name="cid" id="cid" readonly>&nbsp;
	 &nbsp; 
	
<!-- 아님 flag랑 keydown이벤트로 ??  -->
<c:choose>
	<c:when test="${flag==0}">
	<br><span id="asp">아이디가 중복되었습니다</span><br>
		<input type="button" value="중복다시체크" id="recbtn" onclick="recheck()"> &nbsp; 
		<input type="button" value="입력취소" onclick="cancel()">
	</c:when>
	<c:when test="${flag==1}">
	<br><span>사용가능한 아이디입니다</span><br>
		<input type="button" value="아이디사용" onclick="useID()"> &nbsp; 
		<input type="button" value="입력취소" onclick="cancel()">	<!--  cid 를 readonly로 바꿀 수 있나 ㅠㅠ  -->
	</c:when>
	<c:otherwise>
		<br>
		<input type="button" value="중복체크" id="subbtn" onclick="sbmcheck()">
		<input type="button" value="입력취소" onclick="cancel()">
	</c:otherwise>
</c:choose>
</form>
</body>
</html>

