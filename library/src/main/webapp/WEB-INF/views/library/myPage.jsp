<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>

    <link rel="stylesheet" href="/resources/styles/myPage-style.css">

</head>
<body>
    <main style="padding-top:150px;">
        <jsp:include page="../includes/header.jsp" />

        <section class="myPage-content">

            <jsp:include page="../includes/myPageSide.jsp" />

            <section class="myPage-main">

                <h1 class="myPage-title">내 정보</h1>
                <span class="myPage-subject">원하는 회원 정보를 수정할 수 있습니다.</span>

                <form action="info" method="POST" name="myPageFrm">

                    <div class="myPage-row">
                        <label>아이디</label>
                        <input type="text" name="id" readonly="readonly"
                            value="${user.id}">
                    </div>
                    
                    <div class="myPage-row">
                        <label>닉네임</label>
                        <input type="text" name="nickName" 
                            value="${user.nickName}">
                    </div>

                    <div class="myPage-row">
                        <label>이름</label>
                        <input type="text" name="name" 
                            value="${user.name}">
                    </div>
                    
                    <div class="myPage-row">
                        <label>생년월일</label>
                        <input type="text" name="birth"  maxlength="11" 
                            value="${user.birth}">
                    </div>
                    
                    <div class="myPage-row">
                        <label>전화번호</label>
                        <input type="text" name="phone"  maxlength="11" 
                            value="${user.phone}">
                    </div>


                    <button class="myPage-submit">수정하기</button>
                </form>

            </section>

        </section>

    </main>
<jsp:include page="../includes/footer.jsp" />
    
</body>
</html>