<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script><meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="../includes/header.jsp" />
<style>
table {
    width: 400px;
    height: 700px;
    margin: auto;    
} 
.email {
    width: 200px;
    height: 32px;
    font-size: 15px;
    border: 0;
    border-color: lightgray;
    border-radius: 15px;
    outline: none;
    padding-left: 10px;
    background-color: rgb(233,233,233);
}
.text {
    width: 380px;
    height: 32px;
    font-size: 15px;
    border: 0;
    border-radius: 15px;
    outline: none;
    padding-left: 10px;
    background-color: rgb(233,233,233);
}
select {
    width: 160px;
    height: 32px;
    font-size: 15px;
    border: 1;
    border-color: lightgray;
    border-radius: 15px;
    outline: none;
    padding-left: 10px;
}
.btn {
    width: 195px;
    height: 32px;
    font-size: 15px;
    border: 0;
    border-radius: 15px;
    outline: none;
    padding-left: 10px;
    
}
td {
	padding-left:10px;
}
.phone {
    width: 90px;
    height: 32px;
    font-size: 15px;
    border: 1;
    border-color: lightgray;
    border-radius: 15px;
    outline: none;
    padding-left: 10px;
}
.phone_num {
    width: 285px;
    height: 32px;
    font-size: 15px;
    border: 0;
    border-radius: 15px;
    outline: none;
    padding-left: 10px;
    background-color: rgb(233,233,233);
}

</style>


<form id="joinForm" method="post" style="padding:200 50;">
    <table>
    <tr>
        <td><h1 align="center">회원가입</h1></td>
    </tr>
    <tr><td>아이디</td></tr>
    <tr><td><input type="text" class="text" name="id" required></td></tr>
    <tr><td>비밀번호</td></tr>
    <tr><td><input type="password" class="text" name="pw" required></td></tr>
    <tr><td>비밀번호 확인</td></tr>
    <tr><td><input type="password" class="text" name="pw_check" required></td></tr>
    <tr><td>닉네임</td></tr>
    <tr><td><input type="text" class="text" name="nickName" required></td></tr>
    <tr><td>이름</td></tr>
    <tr><td><input type="text" class="text" name="name" required></td></tr>
    <tr><td>전화번호</td></tr>
    <tr>
        <td>
<!--             <select class="phone" name="phone" required id="selectPhone" >
                <option value="010" >010</option>
                <option value="011">011</option>
                <option value="019">019</option>
            </select> -->
            <input type=text class="text" name="phone" id="phone" placeholder="010-0000-0000" required> 
        </td>
    </tr>
    <tr><td>생년월일</td></tr>
    <tr><td><input type="date" class="text" name="birth" id="datepicker" max="9999-12-31" required></td></tr>
    <tr><td>이메일</td></tr>
    <tr>
        <td><input type="text" class="email" name="email" required> @ 
            <select id="email">
                <option value="naver.com">naver.com</option>
                <option value="gmail.com">gmail.com</option>
                <option value="daum.net">daum.net</option>
                <option value="nate.com">nate.com</option>
            </select>
        </td>        
    </tr>
    <tr><td>상품안내 및 마케팅/이벤트 수신동의(선택)</td></tr>
    <tr>	
    	<td>
        	<input type="checkbox" id="phone_ch" name="phone_ch">
  			<label for="phone_ch">SMS</label>       
        	<input type="checkbox" id="email_ch" name="email_ch">
  			<label for="email_ch">Email</label>
        </td>
    </tr>
    </table>
    <div align="center" style="padding:10 10">
    	<input type="submit" value="취소" class="btn btn-secondary" >
    	<input type="submit" value="가입" class="btn btn-primary" name="join_btn">	
    </div>
</form>

 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">알립니다.</h4>
                                        </div>
                                        <div class="modal-body"> 처리가 완료되었습니다. </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                                            <button type="button" class="btn btn-primary">확인</button>
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->
</body>
<script type="text/javascript">
$(document).ready(function(){
	// 회원가입 버튼
	$(".join_btn").click(function(){
		$("#joinForm").attr("action", "/library/join");
		$("#joinForm").submit();
	});
	var birth = $("#datepicker");
	const dateControl = document.querySelector('input[type="date"]')
	dateControl.value = '2000-01-01'
	console.log(dateControl.value)

	$("#selectPhone").change(function(){
		var num = $("#selectPhone:selected").val();
		var text = $("#selectPhone:selected").text();
		
		$("#value").val(num);
		$("#text").val(text);
	});
	
	$("#email").change(function(){
		var email = $("#email:selected").val();
		var e_text = $("#email:selected").text();
		
		$("#value").val(email);
		$("#text").val(e_text);
		
		
	});
	
});
</script>
<jsp:include page="../includes/footer.jsp" />
</html>
