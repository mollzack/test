<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWrite.jsp</title>
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
	function check() {
		if(document.bw.title.value==""){
			alert("제목을 입력하세요");
			return false;
			
		}
		else if(document.bw.content.value==""){
			alert("내용을 입력하세요");
			return false;
		}else{
			document.bw.submit();
		}
		
	}
		function cancel(){
			location.href = "board.do";
		}
		
	</script>
</head>
<body>
<div class="classrow">
		<div class="classcolumn side"></div>
		<div class="classcolumn middle">
			
   
    <div id="jayu"> 글쓰기 </div>

	
	 <form name="bw" action="boardInsert.do" enctype="multipart/form-data" method="post">
	 
	<table border="1">
	 <tbody>
	 	<tr>
	 	<th>아이디 </th>
	 	<td><input  type=text name="id" style="width: 588px" value="${id}" readonly> </td>
	 	</tr>
	 	<tr>
	 	<th>제목 </th>
	 	<td><input  type=text name="title" style="width: 588px"> </td>
	 	</tr>
	 	<tr>
	 	<th colspan="2">내용 </th>
	 	</tr>
	 	<tr>
	 	<td colspan="2"><textarea  name="content" rows="11" cols="72"></textarea></td>
	 	</tr>
	 	<tr>
	 	<th>파일</th>
	 	<td>
	 	<input  type="file" name="upload_f" ><br>  
	 	</td>
	 	</tr>
	 	<!-- img_file_name이름대신 upload__f -->
	 <!--  파일:<input type="file" name="upload_f"><p>    -->		

	 	 </tbody> 
	 	  </table>
	 	  <br>
	 	  	<div class="col_middle" align="right"> 
	 	 	<button class="btn success" onclick="location.href='main.do'; return false;"><span>Home </span></button>
	 	  	<button class="btn success" onclick="check(); return false;"><span>등록 </span></button>
			<button class="btn success" onclick="cancel(); return false;"><span>취소 </span></button>
	  		</div>
			
			<div class="classcolumn side"></div>
 </form>	
</div>
</div>	
</body>
</html>













