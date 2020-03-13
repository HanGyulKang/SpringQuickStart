<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 상세</title>
	<script>
		function deleteBtn(seq) {
			var getBoolean = confirm("글을 삭제하시겠습니까?");

			if(getBoolean == true) {
				window.location.href = 'deleteBoard.do?seq=' + seq;
			} else if(getBoolean == false) {
				window.location.href = 'getBoard.do?seq=' + seq;
			}
		}
	</script>
	<style>
		#deleteBtn {
			border: none;
			background-color: #fff;
			font-size: 103%;
			cursor: pointer;
			font-weight: bold;
			
			transition: .1s;
		}
		
		#deleteBtn:hover {
			color: orange;
			border: 1px solid rgb(44,34,34);
			border-radius: 8px;
			background-color: rgb(44,34,34);
		}
	</style>
</head>
<body>

	<center>
		<h1>글 상세</h1>
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="updateBoard.do" method="post">
		<!-- 게시판 번호 보관용 input hidden -->
		<input type="hidden" name="seq" value="${board.seq }">
		
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left">
						<input type="text" name="title" value="${board.title }">
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left">${board.writer }</td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left">
						<textarea rows="10" cols="40" name="content">${board.content }</textarea>
					</td>					
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${board.regDate }</td>
				</tr>
				<tr>
					<td bgcolor="orange">조회수</td>
					<td align="left">${board.cnt }</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정">
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertBoard.jsp">글등록</a>&nbsp;&nbsp;&nbsp;
		<%-- <a href="deleteBoard.do?seq=${board.seq }">글삭제</a>&nbsp;&nbsp;&nbsp; --%>
		<button type="button" id="deleteBtn" onclick="deleteBtn(${board.seq})">글삭제</button>&nbsp;&nbsp;&nbsp;
		<a href="getBoardList.do">글목록</a>
	</center>


</body>
</html>