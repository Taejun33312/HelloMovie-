<%@page import="movie.main.db.MovieDAO"%>
<%@page import="member.db.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>Hello Movie</title>
<meta name="description" content="Thoughts, reviews and ideas since 1999."/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="stylesheet" type="text/css" href="assets/css/screen.css"/>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:400,300italic,300,400italic,700,700italic|Playfair+Display:400,700,400italic,700italic"/>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>

</head>


<body class="author-template">
	<div class="main-nav overlay clearfix">
	<jsp:include page="../inc/top.jsp"/>
		</div>
	<header class="main-header author-head " style="background-image: url(http://s3.amazonaws.com/caymandemo/wp-content/uploads/sites/10/2015/09/30162427/sep2.jpg)">
	<jsp:include page="../inc/adminCenter.jsp"/>
	</header>
	
	<main class="content" role="main">

	<table id="notice">
		<tr>
		
		    <th class="">예약 번호</th>
		    <th class="">예약 일련번호</th>
		    <th class="">상영 시간</th>
		    <th class="">상영관</th>
		    <th class="">영화 번호</th>
		    <th class="">회원 번호</th>
		    <th class="">좌석 </th>
		    <th class="">성인</th>
		    <th class="">청소년</th>
		    <th class="">예약 시간</th>
		    <th class="">결제 정보</th>
		    <th class="">총 가격</th>
		    <th class="">예약 여부</th>
		    
		</tr>
		
		<c:forEach var="bdto" items="${bookingList }">

			<tr>
			
				<td class="">${bdto.b_num }</td>
				<td class="">${bdto.b_booking_num }</td>
				<td class="">${bdto.t_num }</td>
				<td class="">${bdto.sc_num }</td>
				<td class="">${bdto.m_num }</td>
				<td class="">${bdto.mem_num }</td>
				<td class="">${bdto.s_num }</td>
				<td class="">${bdto.youth_num }</td>
				<td class="">${bdto.adult_num }</td>
				<td class="">${bdto.b_dateTime }</td>
				<td class="">${bdto.b_payment }</td>
				<td class="">${bdto.total_price }</td>
				<td class="">${bdto.b_cancel }</td>
				

				<td>
				<a href="./AdminBookingDelete.mm?B_num=${bdto.b_num } " class="btn-gradient red mini">삭제</a>
        </td>
				
		  
		    </tr>

	    </c:forEach>
		
		
	</table>
		
		
	</main>
		<jsp:include page="../inc/footer.jsp"/>

</body>
</html>