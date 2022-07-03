<%@ page pageEncoding="utf-8"%>

<script type="text/javascript">
	function check(){
		var form = document.gaipForm;	
		

        if (form.id.value == "") {
            alert("아이디를 입력해주세요");
            form.id.focus();
            return false;
        }
 
        if (form.pw.value == "") {
            alert("비밀번호를 입력해주세요");
            form.pw.focus();
            
            return false;
        }
        if (form.pw2.value == "") {
            alert("비밀번호 확인을 입력해주세요");
            form.pw2.focus();
            
            return false;
        }
        if (form.nick.value == "") {
            alert("닉네임을 입력해주세요");
            form.nick.focus();
            
            return false;
        }
		
		form.submit();
	}
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Gugi&display=swap');

col-md-6{
  font-family: 'ONE Mobile Regular', serif;
}

.inner-div {
  background-color: red;
  position: relative;
  left: 30%;
}
</style>
	<div class="container">
		<div class="row">
			<div class="col-md-4" style="text-align:center; font-size:26.7px; font-family: 'Gugi', cursive;">
				<p>아이디</p>
				<p>비밀번호</p>
				<p>비번확인</p>
				<p>닉네임</p>
			</div>
			<div class="col-md-8" style="font-family: 'Gugi', cursive;">
				<form name="gaipForm" method="post" action="./join/joinProcess.jsp">
					<p><input type="text" placeholder="id"style="width:220px;height:40px;font-size:20px;" name="id">
					<p><input type="password" placeholder="password"style="width:220px;height:40px;font-size:20px;" name="pw">
					<p><input type="password" placeholder="one more"style="width:220px;height:40px;font-size:20px;" name="pw2">
					<p><input type="text" placeholder="your name"style="width:220px;height:40px;font-size:20px;" name="nick">
					<p><input type="button" value="가입하기" onclick="check()">
				</form>
			</div>
		</div>
	</div>
	
