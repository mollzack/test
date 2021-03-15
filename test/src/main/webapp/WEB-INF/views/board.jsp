<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>
  <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Create my portfolio</title>
        <!-- Font Awesome icons (free version)-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles.css" rel="stylesheet">
        <!-- Fonts CSS-->
        <link rel="stylesheet" href="resources/css/heading.css">
        <link rel="stylesheet" href="resources/css/body.css">
  
    </head>
    <body id="page-top">
        <nav class="navbar navbar-expand-lg bg-secondary fixed-top" id="mainNav">
            <div class="container"><a class="navbar-brand js-scroll-trigger" href="main.do">Create portfolio</a>
                <button class="navbar-toggler navbar-toggler-right font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu <i class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#portfolio">임명규는</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">게시판</a>
                        </li>
                        <c:choose>
						<c:when test="${id != null }">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" >[${id}님의 정보]</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" onclick="logout();">로그아웃</a>
                        </li>
                        </c:when>
						<c:otherwise>
						<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" onclick="login();">로그인</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="join.do">회원가입</a>
                        </li>
                        </c:otherwise>
						</c:choose>
                    </ul>
                </div>
            </div>
        </nav>
       
       <div>
    	 <table border="1">
	 <tbody>
	 	<tr>
	 	<th>아이디 </th>
	 	<td><input  type=text name="id" style="width: 588px" > </td>
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
       
       </div>
    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
        <div class="scroll-to-top d-lg-none position-fixed"><a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top"><i class="fa fa-chevron-up"></i></a></div>
        <!-- Bootstrap core JS-->
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script>
        <script src="assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
