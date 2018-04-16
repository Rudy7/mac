<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<script src="${path.js}/jquery-3.3.1.min.js"></script>
	<script src="${path.js}/bootstrap.js"></script>
	<style>
		#tab-join-title{
			border: 1px solid gray;
			margin: 0 auto;
			margin-top: 80px;
		}
		#tab-join{
			border: 1px solid gray;
			margin: 0 auto;
			margin-top: 80px;
		}
		#tab-join tr{
			border: 1px solid gray;
			margin: 0 auto;
		}
		#tab-join tr td{
			border: 1px solid gray;
			width: 200px;
			margin: 0 auto;
		}
		#btn-join-addMember{
			border: 1px solid gray;
			width: 100%;
			height: 48px;
		}
	</style>
</head>
<body>
  <form id="form-join">    	

	<table id="tab-join-title">
		<tr>
			<td>회원가입</td>
		</tr>
	</table>
	<table id="tab-join">
		<tr>
			<td colspan="2">이미 맥 공식 온라인몰 회원이신가요? 
				<a id="a-join-login" href="#">로그인</a>
			</td>
			
		</tr>
		<tr>
			<td colspan="2">
				<input id="inp-join-id" name="inp-join-id" type="text" placeholder="*아이디"/>
			</td>
			<td colspan="2">
				<input id="inp-join-pass" name="inp-join-pass" type="text" placeholder="*비밀번호" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input id="inp-join-name" name="inp-join-name" type="text" placeholder="이름" />
			</td>
			<td>
				<input id="inp-join-email1" name="inp-join-email1" type="text" placeholder="이메일"/>
			</td>
			<td>
				<select name="sel-join-email2" id="sel-join-email2">
					<option value="선택">선택</option>
					<option value="@naver.com">@naver.com</option>
					<option value="@gmail.com">@gmail.com</option>
					<option value="@hanmail.net">@hanmail.net</option>
					<option value="@hanmail2.net">@hanmail2.net</option>
					<option value="@hotmail.com">@hotmail.com</option>
					<option value="@outlook.com">@outlook.com/</option>
					<option value="@google.com">@google.com</option>
					<option value="@nate.com">@nate.com</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input id="inp-join-checkBox-passView" type="checkbox"/> 비밀번호 표시
			</td>
		</tr>
		<tr>
			<td>*핸드폰 번호</td>  <!--  <input id="" type="text" placeholder="" /> -->
			<td>
				<select id="sel-join-phoneNum1" name="sel-join-phoneNum1">
					<option value="선택">선택</option>
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>
				</select>
			</td>
			<td>
				<input id="inp-join-phoneNum2" name="inp-join-phoneNum2" type="text" placeholder="핸드폰 번호" />
			</td>
			<td>
				<input id="inp-join-phoneNum3" name="inp-join-phoneNum3" type="text" placeholder="핸드폰 번호" />
			</td>
			<td>
				<button id="btn-join-confirmReqest">인증번호 요청</button>
			</td>
		</tr>
		<tr>
			<td colspan="3">
				<input id="inp-join-confirm" type="text" placeholder="*인증번호" />
			</td>
			<td>
				<button id="btn-join-confirmCheck">인증번호 확인</button>
			</td>
			
		</tr>
		<tr>
			<td colspan="2">
				<input id="inp-join-checkboxAll" type="checkbox" />			
				아래 선택 항목을 포함한 모든 항목에 동의합니다.
			</td>
		</tr>
		<tr>
			<td>*이용약관</td>
		</tr>
		<tr>
			<td colspan="2">글+사이드바</td>
		</tr>
		<tr>
			<td>
				<input type="radio" />동의
			</td>
			<td>
				<input type="radio" />	동의하지 않음
			</td>
		</tr>
		<tr>
			<td colspan="2">*개인정보의 수집 및 이용에 대한 동의(필수)</td>
			<td colspan="2">*개인정보의 수집 및 이용에 대한 동의(필수)</td>		
		</tr>
		<tr>
			<td colspan="2">글+사이드바</td>
			<td colspan="2">글+사이드바</td>
		</tr>
		<tr>
			<td>
				<input type="radio" />동의
			</td>
			<td>
				<input type="radio" />	동의하지 않음
			</td>
			<td>
				<input type="radio" />동의
			</td>
			<td>
				<input type="radio" />	동의하지 않음
			</td>
		</tr>
		<tr>
			<td colspan="2">*제품 홍보 등을 위한 개인정보의 수집 및 이용에 대한 동의(선택)</td>
			<td colspan="2">*개인정보의 취급위탁에 대한 동의(선택)</td>
		</tr>
		<tr>
			<td colspan="2">글+사이드바</td>
			<td colspan="2">글+사이드바</td>
		</tr>
		<tr>
			<td>
				<input type="radio" />동의
			</td>
			<td>
				<input type="radio" />	동의하지 않음
			</td>
			<td>
				<input type="radio" />동의
			</td>
			<td>
				<input type="radio" />	동의하지 않음
			</td>
		</tr>
		<tr>
			<td>*뉴스레터 수신여부</td>
		</tr>
		<tr>
			<td>
				<input type="radio" />수신함
			</td>
			<td>
				<input type="radio" />	수신안함
			</td>
		</tr>
			<tr>
			<td>문자 수신여부</td>
		</tr>
		<tr>
			<td>
				<input type="radio" />수신함
			</td>
			<td>
				<input type="radio" />	수신안함
			</td>
		</tr>
		<tr>
			<td>*DM 수신여부</td>
		</tr>
		<tr>
			<td>
				<input type="radio" />수신함
			</td>
			<td>
				<input type="radio" />	수신안함
			</td>
		</tr>
		<tr>
			<td colspan="4">*개인정보 수집·이용·취급위탁에 대한 동의를 거부하실 수 있으나, 동의를 거부하실 경우 회원가입, 서비스 이용 등을 하실 수 없습니다. </td>
		</tr>
		<tr>
			<td>
				<input type="checkbox" />
			</td>
			<td colspan="3">*가입자 본인은 만 14세 이상입니다.(만 14세 이상부터 회원 가입이 가능합니다.)</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td>
				<button id="btn-join-addMember">회원가입</button>
			</td>
		</tr>
	</table>
	
  </form>		
</body>
	<script>   
		$('#btn-join-addMember').on('click',function(){
			alert("회원가입 클릭");
			$('#form-join')
			.attr('action','${path.context}/login/join')
			.attr('method','post')
			.submit();
		});
		
	</script>
</html>
