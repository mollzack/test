<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[detail]</title>

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
</head>
<body>
	<div class="classrow">
		<div class="classcolumn side"></div>
		<div class="classcolumn middle">
			

			<table>
				<tr>
					<td colspan="2" align="left"><span id="jayu">회원정보</span></td>
				
				</tr>
			</table>

			<table>
				<tr id="secondtr" height="55">
					
					<th width=70>아이디</th>
					<th width=100>이름</th>
					<th width=200>전화번호</th>
					<th width=100>성별</th>
					<th width=200>가입날짜</th>
				</tr>



				
					<tr>
						
						<td>${dto.id}</td>
						<td>${dto.name}</td>
						<td align="center">${dto.phone }</td>
						<td align="center">${dto.gender}</td>
						<td>${dto.wdate1}</td>
					</tr>
		</table>

		
				

			<div id="col_middle" align="right">
			<c:if test="${dto.id=='admin' }">
				<button class="btn success" onclick="location.href='list.do'">
					<span>리스트 </span>
				</button>
			</c:if>
				<button class="btn success" onclick="location.href='predit.do?idx=${id }'">
					<span>수정 </span>
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




