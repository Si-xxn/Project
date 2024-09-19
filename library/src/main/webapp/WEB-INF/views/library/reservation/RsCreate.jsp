<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL 코어 태그 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> <!-- JSTL 포매팅 태그 -->
<%@ include file="../../includes/header.jsp" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 예약 신청</title>
</head>
<body>
<!-- Popular -->
	<div class="popular page_section">
		<div class="container">
			<div class="row">
				<div class="col">
				<br><br><br><br>		
					<div class="section_title text-center">					
						<h1>도서 예약 신청</h1>
					</div>
				</div>
			</div>
		</div><!-- <div class="container"> -->
	</div><!-- <div class="popular page_section"> -->


<div class="container-fluid">
	<div class="row">
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
			<form role="form">
				<div class="form-group">
					 
					<label for="BookUser">예약자</label>
					<input type="text" class="form-control" id="" />
				</div>
				<div class="form-group">					 
					<label for="BookName">도서명</label>
					<input type="text" class="form-control" id="" />
				</div>
				<div class="form-group">					 
					<label for="BookWriter">저자</label>
					<input type="text" class="form-control" id="" />
				</div>
				<div class="form-group">					 
					<label for="BookPublisher">출판사</label>
					<input type="text" class="form-control" id="" />
				</div>
				<div class="form-group">					 
					<label for="BookPrice">가격</label>
					<input type="text" class="form-control" id="" />
				</div>
				<div class="form-group">					 
					<label for="RsStart-day">예약 시작 일자</label>
					<input type="date" class="form-control" id="" />
				</div>
				<div class="form-group">					 
					<label for="RsEnd-day">예약 종료 일자</label>
					<input type="date" class="form-control" id="" />
				</div>			 
				
				<div style="text-align: right;"><a href="RsCreate" class="btn btn-outline-warning btn" type="button" >신청하기</a></div>	
				
				</form>
		</div>
		
		<div class="col-md-4">
		</div>
	</div>
</div>






<%@ include file="../../includes/footer.jsp" %>
</body>
</html>