<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>회원정보</title>
<style type="text/css">

	
</style>

<meta name="description" content="Thoughts, reviews and ideas since 1999."/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="stylesheet" type="text/css" href="assets/css/screen.css"/>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:400,300italic,300,400italic,700,700italic|Playfair+Display:400,700,400italic,700italic"/>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>

	<jsp:include page="../inc/top.jsp"/>
</head>


<body class="author-template">
	<a class="blog-logo" href="./Main.mv"><img src="assets/img/logo.png" alt="Fashion Critiques"/></a>
	<header class="main-header author-head " style="background-image: url(http://s3.amazonaws.com/caymandemo/wp-content/uploads/sites/10/2015/09/30162427/sep2.jpg)">
<jsp:include page="../inc/adminCenter.jsp"/>	
	</header>
	</body>
	<main class="content" role="main">
	<input type ="hidden" name="Mem_num" value="${dto.mem_num }">

	<table>
		<tr>
		    <th class="MemList">회 원 번 호</th>
		    <th class="MemList">회원이름</th>
		    <th class="MemList">아이디</th>
		    <th class="MemList">비밀번호</th>
		    <th class="MemList">휴대폰번호</th>
		    <th class="MemList">생년월일</th>
		    <th class="MemList">등 급 </th>
		    <th class="MemList">주 소 </th>
		    <th class="MemList">이메일</th>
		    <th class="MemList">좋아하는 장르</th>
		    <th class="MemList">예매횟수</th>
		    
		</tr>
		
		<c:forEach var="dto" items="${memList }">
		
			<tr>
				<td class="MemList">${dto.mem_num }</td>
				<td class="MemList">${dto.mem_name }</td>
				<td class="MemList">${dto.mem_id }</td>
				<td class="MemList">${dto.mem_pw }</td>
				<td class="MemList">${dto.mem_phone }</td>
				<td class="MemList">${dto.mem_birth }</td>
				<td class="MemList">${dto.mem_grade }</td>
				<td class="MemList">${dto.mem_addr1 }</td>
				<td class="MemList">${dto.mem_email }</td>
				<td class="MemList">${dto.mem_mType }</td>
				<td class="MemList">${dto.mem_joinDate }</td>
<%-- 				<td class="left">${dto.mem_rCount }</td>
 --%>				
				<td>
				<a href="./MemberUpdate.me"  class="btn-gradient red mini">수정</a>
				<a href="./Delete.me" class="btn-gradient red mini">삭제</a></td>
		   
		    </tr>
	    </c:forEach>
	    
	</table>
<div id="page_control" style="text-align: center;">
	    <c:if test="${startPage > pageBlock }">
			<a href="./AdminMemberInfo.mm?pageNum=${startPage-pageBlock }&search=${search}">이전</a>
		</c:if>
	<c:choose>
	<c:when test="${search eq null }">
		<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
			<a href="./AdminMemberInfo.mm?pageNum=${i }&search=${search}">${i }</a>
		</c:forEach>
	</c:when>
	<c:otherwise>
		<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
			<a href="./AdminMemberInfo.mm?pageNum=${i }&search=${search}">${i }</a>
		</c:forEach>
	</c:otherwise>
	</c:choose>
		<c:if test="${endPage < pageCount }">
			<a href="./AdminMemberInfo.mm?pageNum=${startPage+pageBlock }&search=${search}">다음</a>
		</c:if>
	</div>
	</main>
		<jsp:include page="../inc/footer.jsp"/>

		
</html>