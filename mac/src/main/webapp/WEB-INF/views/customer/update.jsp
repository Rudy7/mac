<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<script src="${path.js}/jquery-3.3.1.min.js"></script>
	<script src="${path.js}/bootstrap.js"></script>
	<style>
		#tab-update-title{
			border: 1px solid gray;
			margin: 0 auto;
			margin-top: 80px;
			font-size: 40px;
		}
		#tab-update{
			border: 1px solid gray;
			margin: 0 auto;
			margin-top: 80px;
		}
		#tab-update tr{
			border: 1px solid gray;
			margin: 0 auto;
		}
		#tab-update tr td{
			border: 1px solid gray;
			width: 200px;
			margin: 0 auto;
		}
		.td-update-subTitle{
			border: 1px solid gray;
			font-size: 30px;
		}
		.inp-update{
			border: 1px solid gray;
			width: 96%;
		}
		
		.tr-update-space{
			border: 1px solid gray;
			height: 25px;
		}
		#btn-update-enter{
			border: 1px solid gray;
			width: 100%;
		}
	</style>
</head>
<body>

  <form id="form-update">    	

	<table id="tab-update-title">
		<tr>
			<td>회원정보 수정</td>
		</tr>
	</table>
	<table id="tab-update">
		<tr>
			<td colspan="2">*표시는 필수 입력 항목입니다   
			</td>
		</tr>
		<!-- <tr>
			<td>고객님의 개인정보가 업데이트 되었습니다. </td>
		</tr> -->
		<tr>
			<td colspan="2">
				<input name="inp-update-name" class="inp-update" type="text" value="${loginUser.name}" placeholder="*이름" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input name="inp-update-email1" class="inp-update" type="text" value="${loginUser.email}" placeholder="*이메일 주소" />
			</td>
			<td colspan="2">
				<input name="inp-update-email2" class="inp-update" type="text" value="${loginUser.email}" placeholder="*이메일 주소 확인" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input name="inp-update-pass1" class="inp-update" type="text" value="${loginUser.customPass}" placeholder="*비밀번호" />
			</td>
			<td colspan="2">
				<input name="inp-update-pass2" class="inp-update-pass2" type="text" value="${loginUser.customPass}" placeholder="*비밀번호 확인" />
			</td>
		</tr>
		<tr>
			<td>*핸드폰 번호</td> 
		</tr>
		<tr>	
			<td>
				<select id="sel-update-phoneNum1" name="sel-update-phoneNum1">
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
				<input id="inp-update-phoneNum2" name="inp-update-phoneNum2" type="text"  placeholder="핸드폰 번호" />
			</td>
			<td>
				<input id="inp-update-phoneNum3" name="inp-update-phoneNum3" type="text"  placeholder="핸드폰 번호" />
			</td>
			<td colspan="3" class="inp-update">
				<button id="btn-update-confirmReqest">인증번호 요청</button>
			</td>
		</tr>
		<tr>
			<td colspan="3">
				<input class="inp-update" id="inp-update-confirm" type="text" placeholder="*인증번호" />
			</td>
			<td class="inp-update">
				<button id="btn-update-confirmCheck">인증번호 확인</button>
			</td>
		</tr>
		<tr class="tr-update-space"></tr>
		<tr>
			<td colspan="3" class="td-update-subTitle">M·A·C 뉴스레터</td>
		</tr>
		<tr>
			<td colspan="4">맥의 새로운 서비스, 신상품, 이벤트 정보 등 최신 정보를 미리 받아보고 싶으시다면, 수신 채널을 선택해 주세요.</td>
		</tr>
		<tr>
			<td>뉴스레터 수신여부</td>
		</tr>
		<tr>
			<td>
				<input type="radio" /> 수신함
			</td>
			<td>
				<input type="radio" /> 수신안함
			</td>
		</tr>
		<tr>
			<td>문자 수신여부</td>
		</tr>
		<tr>
			<td>
				<input type="radio" /> 수신함
			</td>
			<td>
				<input type="radio" /> 수신안함
			</td>
		</tr>
		<tr>
			<td>DM 수신여부</td>
		</tr>
		<tr>
			<td>
				<input type="radio" /> 수신함
			</td>
			<td>
				<input type="radio" /> 수신안함
			</td>
		</tr>
		<tr class="tr-update-space">
		</tr>
		<tr>
			<td  colspan="3" class="td-update-subTitle">추가정보(선택)</td>
		</tr>
		<tr>
			<td colspan="4">M·A·C의 나만의 맞춤형 서비스를 경험하고 싶으시다면, 아래 정보를 입력해주세요.</td>
		</tr>
		<tr>
			<td>생년월일</td>
		</tr>
		<tr>
			<td>
				<select id="sel-update-year" name="sel-update-year">
					<option value="선택">년</option> 
					<option value="010">2001</option>
					<option value="010">2002</option>
				</select>
			</td>
			<td>
				<select id="sel-update-month" name="sel-update-month">
					<option value="선택">6월</option> 
					<option value="010">7월</option>
				</select>
			</td>
			<td>
				<select id="sel-update-date" name="sel-update-date">
					<option value="선택">일</option> 
					<option value="010">1</option>
					<option value="010">2</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>성별</td>
		</tr>
		<tr>
			<td>
				<input type="radio" /> 여성
			</td>
			<td>
				<input type="radio" /> 남성
			</td>
		</tr>
		<tr>
			<td colspan="4">회원 탈퇴시, M·A·C 신제품 소식 및 이벤트 행사내용과 관련된 정보를 더 이상 제공받으실 수 없습니다. </td>
		</tr>
		<tr>
			<td colspan="4">회원 탈퇴를 원하시는 경우 
				<a id="a-update-deleteMember" href="#">여기</a>를 클릭해주세요.
			</td>
		</tr>
		<tr class="tr-update-space">
		</tr>
		<tr class="tr-update-space">
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td class="inp-update">
				<button id="btn-update-enter">확인</button>
			</td>
		</tr>
		<tr class="tr-update-space">
		</tr>
		<tr class="tr-update-space">
		</tr>
	</table>
	
  </form>		
</body>
	<script>   
		$('#btn-update-enter').on('click',function(){
			alert("확인 클릭");
			$('#form-update')
			.attr('action','${path.context}/mypage')
			.attr('method','post')
			.submit();
		});
		$('#a-update-deleteMember').on('click',function(){
			alert("탈퇴 확인 클릭");
			location.href="${path.context}/delete";
		})
	</script>
</html>
