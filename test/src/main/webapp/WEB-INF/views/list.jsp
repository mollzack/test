<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[list.jsp]</title>

<style type="text/css">
* {
	font-size: 18pt;
	font-weight: bold;
}

a {
	text-decoration: none;
	font-size: 18pt;
	font-weight: bold;
	color: black;
}

a:hover {
	font-size: 20pt;
	font-weight: bold;
	text-decoration: underline;
	color: red;
}

@charset "UTF-8";

* {
	font-size: 18pt;
	font-weight: bold;
	font-family: sans-serif;
}

a {
	text-decoration: none;
	font-size: 18pt;
	font-weight: bold;
	color: black;
}

a:hover {
	font-size: 20pt;
	font-weight: bold;
	text-decoration: underline;
	color: red;
}

#jayu {
	text-align:left;
	color: black;
	font-size: 30pt;
}
form[name=myform]{
	margin-top:2%;
	float:right;
}
#wr {
	text-align: left;
}

table {
	width: 100%;
	margin: auto;
	font-size: 10pt;
	border-collapse: collapse;
	border-spacing: 4px;
}

#secondtr {
	background-color: #d81806;
	color: white;
}

td {
	border-bottom: 1px solid lightgray;
	padding: 5px;
}

hr {
	width: 100%;
	border: none;
	
	border-top: 2px dashed #5f9ea0;
}

#finder {
	background-color: #d81806;
	color: white;
	border: none;
}



#ntr {
	border-bottom: 2px dashed red;
}
.button {
	border:1px solid white;
	background-color: #5f9ea0;

	color: #FFFFFF;
	text-align: center;
	font-size: 28px;
	padding: 20px;
	width: 325px;
	transition: all 0.5s;
	cursor: pointer;
	float: left;
}
#col_middle {
	width:100%;
	margin-top: 20px;
	display: inline-block;
	text-align: right;
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
#re{
	margin-top: 0.8%;
	font-size:14pt;
	float:right;
}
.btn {
  border: 2px solid black;
  background-color: white;
  color: black;
  padding: 10px 20px;
  font-size: 14px;
  cursor: pointer;
  border-radius: 5px;
  width: 14%;
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
.classrow{
	text-align: center;
}
.classrow:after{
	content: "";
	display: table;
	clear: both;
}

.classcolumn {
	float: left;
	padding: 10px;
}

.classcolumn.side{
	padding-top: 80px;
	width: 15%;
}
.classcolumn.middle{
	width: 70%;
}

.title{
	text-align: left;
	padding: 0;
	border-bottom: 2px solid #5f9ea0; 
}
</style>


<script type="text/javascript">
	function clearText() {
		document.myform.keyword.value = "";
		document.myform.keyword.focus();
	}
</script>

<script>
function die(id){

	var yesno = confirm("이 계정을 삭제하시겠습니까?");
	if(yesno==true){
	location.href = "delete.do?idx=" + id;
	alert("삭제하였습니다.");
	}else{
	alert("취소");
	}
}

</script>

</head>
<body>
	<div class="classrow">
		<div class="classcolumn side"></div>
		<div class="classcolumn middle">
			

			<table>
				<tr>
					<td colspan="2" align="left"><span id="jayu">회원 리스트</span></td>
					<td colspan="3">

						<form name="myform">
							검색 : <select name="keyfield" onchange="clearText();">
								<option value="">-----선택하세요-----</option>
								<option value="id" <c:if test="${skey=='id'}"> selected </c:if>>
									아이디검색</option>
								<option value="title"
									<c:if test="${skey=='title'}">selected</c:if>>제목검색</option>

								<option value="">전체출력</option>
							</select> <input type="text" name="keyword" value="${sval }" size=10>
							<input type="submit" value="검색" id="finder">
						</form>
					</td>
				</tr>
			</table>

			<table>
				<tr id="secondtr" height="55">
					<th width=20px height=40px></th>
					<th width=70>아이디</th>
					<th width=100>이 름</th>
					<th width=100>번호</th>
					<th width=100>성별</th>
					<th width=100>가입일</th>
					<th width=100></th>
				</tr>



				<c:forEach var="dto" items="${LG}">
					<tr>
						<td>${dto.rn}</td>
						<td >${dto.id}</td>
						<td>${dto.name}</td>
						<td>${dto.phone}</td>
						<td>${dto.gender}</td>
						<td align="center">${dto.wdate1 }</td>
						<td><button onclick="die('${dto.id}')">삭제</button></td>
					</tr>
				</c:forEach>

			<%-- 	<tr align="center">
					<td colspan="5"><c:if test="${startpage>10 }">
							<a href="boardList.do?pageNum=${(startpage-10)}${returnpage }">[이전]</a>
						</c:if> <c:forEach var="i" begin="${startpage }" end="${endpage }"
							step="1">
							<c:choose>
								<c:when test="${i==pageNUM }">
									<font style='color: #d81806; font-size: 25pt'> [${i}]</font>
								</c:when>
								<c:otherwise>
									<a href="boardList.do?pageNum=${i }${returnpage }">[${i}]</a>
								</c:otherwise>
							</c:choose>
						</c:forEach> <c:if test="${endpage<pagecount }">
							<a href="boardList.do?pageNum=${(startpage+10)}${returnpage }">[다음]</a>
						</c:if> <span id="re">글갯수: ${Gtotal}/${Atotal}</span></td>
				</tr> --%>
			</table>


			<div id="col_middle" align="right">
				<button class="btn success" onclick="location.href='board.do'">
					<span>글쓰기 </span>
				</button>
				<button class="btn success" onclick="location.href='main.do'">
					<span>Home </span>
			
				</button>
			</div>

		</div>
		<div class="classcolumn side"></div>

	</div>
</body>
</html>




