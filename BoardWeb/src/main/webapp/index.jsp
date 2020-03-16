<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-142541412-1"></script>
<script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { 
            dataLayer.push(arguments); 
        }
        gtag('js', new Date());

        gtag('config', 'UA-142541412-1');
</script>
</head>
<body>
	<center>
		<h1>게시판 프로그램</h1>
		<hr>
			<a href="login.do">로그인</a><br><br><br>
			<a href="getBoardList.do">글 목록 바로가기</a><br><br><br>
			<a href="dataTransform.do">글 목록 변환 처리</a>
		<hr>
	</center>
</body>
</html>
