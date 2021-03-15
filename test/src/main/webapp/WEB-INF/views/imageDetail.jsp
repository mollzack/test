<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [imageDetail.jsp] </title>
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
	margin-left: 10%;
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



.slider{
    width: 640px;
    height: 480px;
    position: relative;
    margin: 0 auto;
    overflow: hidden;
}
.slider input[type=radio]{
    display: none;
}

ul.imgs{
    padding: 0;
    margin: 0;
}
ul.imgs li{
    position: absolute;
   left: 640px;
    transition-delay: 1s;
    list-style: none;
    padding: 0;
    margin: 0;
}

.bullets{
    position: absolute;
    left: 50%;
    transform: translateX(-50%);
    bottom: 20px;
    z-index: 2;
}
.bullets label{
    display: inline-block;
    border-radius: 50%;
    background-color: rgba(0,0,0,0.55);
    width: 20px;
    height: 20px;
    cursor: pointer;
}

.slider input[type=radio]:nth-child(1):checked~.bullets>label:nth-child(1){
    background-color: red;
}
.slider input[type=radio]:nth-child(2):checked~.bullets>label:nth-child(2){
    background-color: red;
}
.slider input[type=radio]:nth-child(3):checked~.bullets>label:nth-child(3){
    background-color: red;
}
.slider input[type=radio]:nth-child(4):checked~.bullets>label:nth-child(4){
    background-color: red;
}

.slider input[type=radio]:nth-child(1):checked~ul.imgs>li:nth-child(1){
    left: 0;
    transition: 0.5s;
    z-index:1;
}
.slider input[type=radio]:nth-child(2):checked~ul.imgs>li:nth-child(2){
    left: 0;
    transition: 0.5s;
    z-index:1;
}
.slider input[type=radio]:nth-child(3):checked~ul.imgs>li:nth-child(3){
    left: 0;
    transition: 0.5s;
    z-index:1;
}
.slider input[type=radio]:nth-child(4):checked~ul.imgs>li:nth-child(4){
    left: 0;
    transition: 0.5s;
    z-index:1;
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
			<td>
			
					<div class="slider">
						<input type="radio" name="slide" id="slide1" checked>
						<input type="radio" name="slide" id="slide2">
						<input type="radio" name="slide" id="slide3">
						<input type="radio" name="slide" id="slide4">
						<ul id="imgholder" class="imgs">
						
		
					
					<li>
					<c:if test="${dto.img_file_name != null}">
					<img
						src="${pageContext.request.contextPath}/resources/upload/${dto.img_file_name}">
						</c:if>
					</li>
					
					<li>
					<c:if test="${dto.img_file_name2 != null}">
					<img
						src="${pageContext.request.contextPath}/resources/upload/${dto.img_file_name2}">
						</c:if>
					</li>
					
					<li>
					<c:if test="${dto.img_file_name3 != null}">
					<img
						src="${pageContext.request.contextPath}/resources/upload/${dto.img_file_name3}">
					</c:if>
					</li>
					<li>
					<c:if test="${dto.img_file_name4 != null}">
					<img
						src="${pageContext.request.contextPath}/resources/upload/${dto.img_file_name4}"> 
					</c:if>
					</li>	
						</ul>
						<div class="bullets">
							<c:if test="${dto.img_file_name != null}">
							<label for="slide1">&nbsp;</label>
							</c:if>
							<c:if test="${dto.img_file_name2 != null}">
							<label for="slide2">&nbsp;</label>
							</c:if>
							<c:if test="${dto.img_file_name3 != null}">
							<label for="slide3">&nbsp;</label>
							</c:if>
							<c:if test="${dto.img_file_name4 != null}">
							<label for="slide4">&nbsp;</label>
							</c:if>
						</div>
						</div>
				</td>
				
		</tr>
	</table><p>


<div class="col_middle"> 
	
  <c:if test="${dto.id=='admin' }"> 
  <button class="btn success" onclick="location.href='boardpreEdit.do?idx=${dto.inum }'"><span>수정 </span></button>
  <button class="btn success" onclick="location.href='imageDelete.do?idx=${dto.inum }'"><span>삭제 </span></button> 
  </c:if>  
	 
  <button class="btn success" onclick="location.href='imageList.do'"><span>목차 </span></button>
  <br><br><br>
  </div>

 
</body>
</html>












