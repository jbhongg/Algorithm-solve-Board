<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
	
	<c:forEach items="${studyList}" var="study">
		<table class="table table-striped table-bordered table-hover"
			style="text-align: center">
			<caption style="text-align: center">스터디 그룹</caption>
			<tr>
				<td>스터디명</td>
				<td style="text-align: left">${study.name}</td>
			</tr>
			<tr>

				<td>관리자</td>
				<td style="text-align: left">${study.administor}</td>
			</tr>
			<tr>
				<td>소개</td>
				<td style="text-align: left">${study.inform}</td>
			</tr>
			<tr>
				<td>멤버</td>
				<td style="text-align: left"><a
					href="studymemberlist.do?num=${study.num}"> 보러가기</a></td>
			</tr>


		</table>
		<div style="text-align: right">
			<input type=button class="btn btn-danger" value="가입신청하기"
				OnClick=join()> <input type=button class="btn btn-secondary"
				value="돌아가기" OnClick="window.location='list.do?kind=${5}'">
		</div>
		<script>
 		 function join(){
		 	 if(confirm("스터디 가입신청을 하시겠습니까?")==true){
		 		location.href="studyjoin.do?num=${study.num}";
		
		  }
		  else return;
		  
 		 }
  </script>
	</c:forEach>
</body>
</html>