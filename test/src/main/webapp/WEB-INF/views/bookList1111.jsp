<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 외부 CSS -->
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<!-- 외부 스크립트 -->
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
	integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<style type="text/css">
</style>
<script type="text/javascript">
</script>
<meta charset="UTF-8">
<title>Copang</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.scale {
	transform: scale(1);
	-webkit-transform: scale(1);
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-o-transform: scale(1);
	transition: all 0.1s ease-in-out; /* 부드러운 모션을 위해 추가*/
}

.scale:hover {
	transform: scale(1.8);
	-webkit-transform: scale(1.8);
	-moz-transform: scale(1.8);
	-ms-transform: scale(1.8);
	-o-transform: scale(1.8);
}

.img {
	width: 325px;
	height: 280px;
	overflow: hidden
} /* 부모를 벗어나지 않고 내부 이미지만 확대 */
#listdiv {
	margin-top: 20pt;
}

.btn {
	border: 2px solid black;
	background-color: white;
	color: black;
	padding: 14px 28px;
	font-size: 16px;
	cursor: pointer;
	border-radius: 5px;
}

.btn1 {
	border: 2px solid black;
	background-color: white;
	color: black;
	padding: 7px 14px;
	font-size: 12px;
	cursor: pointer;
	border-radius: 5px;
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

/* Red */
.danger {
	border-color: #f44336;
	color: red;
}

.danger:hover {
	background: #f44336;
	color: white;
}

.card {
	box-shadow: 0 0 0 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	width: 250px;
	height: 300px;
	align-items: center;
	align-self: center;
}

.card:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

.container {
	padding: 10px 16px;
	align-content: center;
}

/*셀렉트*/
/*the container must be positioned relative:*/
.custom-select {
	position: relative;
	font-family: Arial;
	text-align: center;
}

.custom-select select {
	display: none; /*hide original SELECT element:*/
}

.select-selected {
	background-color: #5f9ea0;
}

/*style the arrow inside the select element:*/
.select-selected:after {
	position: absolute;
	content: "";
	top: 14px;
	right: 10px;
	width: 0;
	height: 0;
	border: 6px solid transparent;
	border-color: #fff transparent transparent transparent;
}

/*point the arrow upwards when the select box is open (active):*/
.select-selected.select-arrow-active:after {
	border-color: transparent transparent #fff transparent;
	top: 7px;
}

/*style the items (options), including the selected item:*/
.select-items div, .select-selected {
	color: #ffffff;
	padding: 8px 16px;
	border: 1px solid transparent;
	border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
	cursor: pointer;
	user-select: none;
}

/*style items (options):*/
.select-items {
	position: absolute;
	background-color: #5f9ea0;
	top: 100%;
	left: 0;
	right: 0;
	z-index: 99;
}

/*hide the items when the select box is closed:*/
.select-hide {
	display: none;
}

.select-items div:hover, .same-as-selected {
	background-color: rgba(0, 0, 0, 0.1);
}

.colorw {
	text-align: center;
}

.colorw:after {
	content: "";
	display: table;
	clear: both;
}

.col{
	float: left;
	padding: 10px;
}

.col.left {
	width: 20%;
}
.col.right {
	width: 20%;
}

.col.middle {
	width: 60%;
}
.tab {
  float: left;
  border: 1px solid #5f9ea0;
  background-color: #white;
  width: 80%;
  height: 100%;
}
/* Style the buttons inside the tab */
.tab button {
  display: block;
  background-color: inherit;
  color: black;
  padding: 22px 16px;
  width: 100%;
  border-bottom: 1px solid #5f9ea0;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #5f9ea0;
}

/* Create an active/current "tab button" class */
.tab button.active {
  background-color: #5f9ea0;
}
</style>
<script type="text/javascript">
	$(function(){
		
		$(".tablinks").on("click", function(){
			if($(this).text() == 'JAVA / KOTLIN'){
				location.href = "booklist.do?kind=java";
			}else if($(this).text() == 'HTML / CSS / JS'){
				location.href = "booklist.do?kind=html";
			}else{
				location.href = "booklist.do?kind=db";
			}
		});
	});
</script>
</head>
<body>

	<h1 align="center">
		<font color=#5f9ea0 style="font-size: 40pt">교재 목록</font>
	</h1>
	<hr color=#5f9ea0>

	<div align="right">
		<a href="main.do"><button class="btn success">메 인</button></a>
		<c:if test="${copang == 'admin' }">
			<a href="book_write.do"><button class="btn success">교재등록</button></a>
		</c:if>
	</div>

	<div class="colorw">
		<div class="col left">
			<div class = "tab">
				<button class="tablinks">JAVA / KOTLIN</button>
			    <button class="tablinks">HTML / CSS / JS</button>
			    <button class="tablinks">DB / SPRING</button>
			</div>
		</div>

		<div class="col middle">

			<div id="listdiv" align="center">
				<table style="width: 100%;">

				<c:forEach var="dto" items="${LG}" varStatus="status">
					<c:if test="${status.index%5 == 0 }">
						<tr valign="bottom">
					</c:if>

					<td height="200" valign="top" width="7"><font size=3
						class="card-text" style="color: black; font-weight: bolder;">${dto.rn}</font>
					</td>
					<td height="200"><img
						src="${pageContext.request.contextPath}/resources/upload/${dto.image}"
						class="card-img-top, scale" alt="bottom" style="width: 8rem"
						data-toggle="tooltip" data-placement="bottom" title="재고:0">
						<div style="width: 6rem; height: 11rem">
							<h6 class="card-title" style="font-weight: bolder;">
								<a href="bookDetail.do?id=${dto.book_id}" data-toggle="tooltip"
									data-placement="bottom" title="재고:0">${dto.title}</a>
							</h6>
							 <font size=2 class="card-title">${dto.grade}</font><br> 
							 <font size=2 class="card-title">${dto.price}</font><br> 
							 <font size=2 class="card-title">${dto.rate}</font><br> 
							 <a href="#" class="badge badge-info" style="width: 2rem">구매</a> <a
								href="#" class="badge badge-info" style="width: 3.4rem">장바구니</a>
						</div></td>
					<c:if test="${status.count%5 == 0 }">

					</c:if>
				</c:forEach>


				<tr align="center">
					<td colspan="10">
						<!-- 첫페이지 --> <c:if test="${startpage>10}">
							<a href="booklist.do?pageNum=${pagecount-pagecount+1}">[첫페이지]</a>
						</c:if> <!-- 이전 --> <c:if test="${startpage>10}">
							<a href="booklist.do?pageNum=${(startpage-10)}${returnpage}">[이전]</a>
						</c:if> <c:forEach var="i" begin="${startpage}" end="${endpage}">
							<c:choose>
								<c:when test="${i==pageNUM}">
									<font style="color: red; font-size: 18pt"> [${i}] </font>
								</c:when>
								<c:otherwise>
									<a href="booklist.do?pageNum=${i}${returnpage}${returntype}${returnkind}">[${i}]</a>
								</c:otherwise>
							</c:choose>
						</c:forEach> <!-- 다음 --> <c:if test="${endpage<pagecount}">
							<a href="booklist.do?pageNum=${(startpage+10)}${returnpage}">[다음]</a>
						</c:if> <!-- 끝페이지 --> <c:if test="${endpage<pagecount}">
							<a href="booklist.do?pageNum=${pagecount}">[끝페이지]</a>
						</c:if>
					</td>
				</tr>

				<tr align="center">
					<td colspan=10>
						<button type="button" class="btn success"
							onclick="location.href='booklist.do?type=highprice${returnkind}'">▼
							높은 가격순</button>
						<button type="button" class="btn success"
							onclick="location.href='booklist.do?type=lowprice${returnkind}'">▲
							낮은 가격순</button>
						<button type="button" class="btn success"
							onclick="location.href='booklist.do?type=highrate${returnkind}'">▲
							높은 평점순</button>
					</td>
				</tr>

				<tr align="center">
					<td colspan=8 height=50>
						<form name="myform">
							검색: <select name="keyfield" onchange="clearText();">
								<option value="">--- 선택- --</option>
								<option value="title">제목</option>
								<option value="content">내용</option>

							</select> <input type="text" name="keyword" value="${sval }" size=20>
							<input type="hidden" name="kind" value="${kind}"> <input
								type="submit" value="검색">
						</form>
					</td>

				</tr>
			</table>
			</div>


		</div>
		<div class="col right"></div>
	</div>




	<div class="footer">
		<p>상호명 : (주)코팡 개발자 : 장우석 김정은 이은주 임명규 조성환</p>
		<p>대표 전화번호 : 010-5144-6654 홈페이지 문의 : 010-2089-7757</p>
	</div>

</body>
</html>