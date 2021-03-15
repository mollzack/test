<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [boardDetail.jsp] </title>
	<style type="text/css">
	  *{ font-size: 16pt; font-weight: bold; }
	  a{ font-size: 16pt; text-decoration:none; color:blue ; font-family: Comic Sans MS; }
	  a:hover{ font-size: 18pt; text-decoration:underline; color:green ; font-family: Comic Sans MS; }
	</style>
<style>
table {
	width: 1000px;
	margin: auto;
	font-size: 10pt;
	border-collapse: collapse;
	border-spacing: 4px;
}

#link {
	text-align: center;
}

#jayudiv {
	width: 1000px;
	margin: auto;
}

#jayu {
	width: 630px;
	float: left;
	color: black;
	font-size: 30pt;
}

.ab {
	font-size: 25px;
	border: 1px solid lightgray;
	text-align: left;
	padding: 5px;
}

.qb {
	border: 1px solid lightgray; text-indent;
	padding: 5px;
}

hr {
	width: 1000px;
	margin: auto;
	margin-top: 8px;
	border-top: 3px dashed #5f9ea0;
}

.ws {
	margin-left: 67%;
	color: red;
}

#bs {
	width: 200px;
	margin-bottom: 0px;
	background-color: lightgray;
	float: right;
}

.ig {
	margin-top: 3%;
	margin-left: 16%;
	margin-bottom: 3%;
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

.btn {
	border: 2px solid black;
	background-color: white;
	color: black;
	padding: 14px 28px;
	font-size: 16px;
	cursor: pointer;
	border-radius: 5px;
	width: 16%;

	float: right;
}

/* Green */
.success {
	border-color: #5f9ea0;
	color: #5f9ea0;
	margin-left: 10px;
}

.success:hover {
	background-color: #5f9ea0;
	color: white;
}

.col_middle {
	width: 1000px;
	margin: auto;
}

.bi {
	display: block;
	margin: 0 auto;
}
</style>
	<script type="text/javascript">
	</script>
</head>
<body>
<span class="ig" style="font-size: 40pt">⊙Create portfolio</span> <br><br>
  
    <div id="jayudiv">
     <div class="col" id="jayu"> ${dto.title }</div>
   
 </div>
 
     <hr>    
 	<br> 

   	
<table>
		<tr>
			<td class="ab">${dto.id }<font-size="50pt">님의 글</font-size> <span
				class="ws">${dto.wdate2 }</span></td>

		</tr>
		<tr>
			<td class="qb"><br> ${dto.content } <br>
			<br> <c:if test="${dto.img_file_name!=null}">
					<a href="bdownload.do?idx=${dto.bnum}&bname=${dto.img_file_name}">
						<img
						src="${pageContext.request.contextPath}/resources/upload/${dto.img_file_name}"
						width=900 height=700 class="bi">
					</a>
				</c:if></td>
		</tr>
	</table><p>


<div class="col_middle"> 
	
	<%--  <c:if test="${copang=='admin' || copang==dto.id }">  --%>
  <button class="btn success" onclick="location.href='boardpreEdit.do?idx=${dto.bnum }'"><span>수정 </span></button>
  <button class="btn success" onclick="location.href='boardDelete.do?idx=${dto.bnum }'"><span>삭제 </span></button>
	<%-- </c:if>  --%>
  <button class="btn success" onclick="location.href='boardList.do'"><span>목차 </span></button>
  <br><br><br>
  </div>

 
</body>
</html>












