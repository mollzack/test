<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[boardEdit.jsp]</title>
<style type="text/css">
* {
	font-size: 20pt;
	font-weight: bold;
}

a {
	font-size: 24pt;
	text-decoration: none;
	color: blue;
	font-family: Comic Sans MS;
}

a:hover {
	font-size: 26pt;
	text-decoration: underline;
	color: green;
	font-family: Comic Sans MS;
}
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
	background-color: #5f9ea0;
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
	color: #5f9ea0;
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
	border-color: #5f9ea0;
	color: #5f9ea0;
}

.success:hover {
	background-color: #5f9ea0;
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

.title {
	text-align: center;
	padding: 0;
}

form {
	width: 1005px;
}
</style>

<script>
	function check() {
		if(document.be.title.value==""){
			alert("제목을 입력하세요");
			document.be.title.focus();
			exit;
		}
		else if(document.be.content.value==""){
			alert("내용을 입력하세요");
			exit;
		}
		document.be.submit();
		}
		function cancel(){
			location.href = "boardList.do";
		}
	</script>
	
</head>
<body>
	<div class="classrow">
		<div class="classcolumn side"></div>
		<div class="classcolumn middle">
			<div class="title">
				<img src=resources/images/copang.png width=300px height=120px>
			</div>
			<div id="jayu">글수정</div>

			<form action="boardEdit.do" name="be" enctype="multipart/form-data"
				method="post">
				<input type="hidden" name="bnum" value="${dto.bnum }"> <br>
				<table border="1">
					<tbody>
						<tr>
							<th>아이디</th>
							<td><input type=text name="id" style="width: 100%"
								value="${dto.id}" readonly></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input type=text name="title" style="width: 100%"
								value="${dto.title}"></td>
						</tr>
						<tr>
							<th colspan="2">내용</th>
						</tr>
						<tr>
							<td colspan="2"><textarea name="content" rows="4" cols="70">${dto.content }</textarea></td>
						</tr>
						<tr>
							<th>등록된 파일</th>
							<td><img
								src="${pageContext.request.contextPath}/resources/upload/${dto.img_file_name}"
								style="max-width: 300px; max-height: 200px;"><Br></td>
						</tr>
						<tr>
							<th>파일</th>
							<td><input type="file" name="upload_f"><br> <input
								type="hidden" id="oFile" name="oFile"
								value="${dto.img_file_name}"></td>
						</tr>
						
						<!-- img_file_name이름대신 upload__f -->
						<!--  파일:<input type="file" name="upload_f"><p>    -->

					
					</tbody>
				</table>
				<br>

				<div id="col_middle" align="right">
					<button class="btn success"
						onclick="location.href='boardList.do'; return false;">
						<span>리스트 </span>
					</button>
					<button class="btn success" onclick="return check(); return false;">
						<span>등록 </span>
					</button>
					<button class="btn success" onclick="cancel(); return false;">
						<span>취소 </span>
					</button>
				</div>
				<div class="classcolumn side"></div>
			</form>
		</div>

	</div>
</body>
</html>





