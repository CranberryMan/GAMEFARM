<%@ page pageEncoding="utf-8"%>

<script type="text/javascript">
	function check() {
		var form = document.loginForm;

		form.submit();
	}
</script>

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Gugi&display=swap');

.inner-div {
	background-color: red;
	position: relative;
	left: 30%;
}
</style>
<div class="container">
	<div class="row">
		<div class="col-md-4"
			style="text-align: right; font-size: 26.7px; font-family: 'Gugi', cursive;">
			<p>아이디</p>
			<p>비밀번호</p>
		</div>
		<div class="col-md-8"
			style="font-family: 'Gugi', cursive; text-align : left; justify-content : left ; align-items : left;">
			<form name="loginForm" method="post" action="./login/loginProcess.jsp">
				<p>
					<input type="text" placeholder="id"
						style="width: 220px; height: 40px; font-size: 20px;" name="id">
				<p>
					<input type="password" placeholder="password"
						style="width: 220px; height: 40px; font-size: 20px;" name="pw">
				<p>
					<input type="button" value="로그인하기" onclick="check()">
			</form>
		</div>
	</div>
</div>

