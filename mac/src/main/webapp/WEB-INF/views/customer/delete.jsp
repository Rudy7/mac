<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<script src="${path.js}/jquery-3.3.1.min.js"></script>
	<script src="${path.js}/bootstrap.js"></script>
	<style>
		body {
  			margin: 0;
		}

		/* Style the header */
		.header {
		    background-color: #f1f1f1;
		    padding: 20px;
		    text-align: center;
		}
		/* Create three equal columns that floats next to each other */
		.column {
			border: 1px solid gray; 
		    float: left;
		    width: 24.8%;
		    display: flex; 
			display: block;   
		    flex-direction: row;
		    align-items: center;
		    height: 230px;		    
		}		
		/* Clear floats after the columns */
		.row:after {
		    content: "";
		    display: table;
		    clear: both;
		}
		
		/* Responsive layout - makes the three columns stack on top of each other instead of next to each other on smaller screens (600px wide or less) */
		@media screen and (max-width: 600px) {
		    .column {
		        width: 100%;
		    }
		}
		#tab-delete-title{
			border: 1px solid gray;
			margin: 0 auto;
			margin-top: 80px;
			font-size: 40px;
		}
		#tab-delete{
			border: 1px solid gray;
			margin: 0 auto;
			margin-top: 80px;
		}
		#tab-delete tr{
			border: 1px solid gray;
			margin: 0 auto;
		}
		#tab-delete tr td{
			border: 1px solid gray;
			width: 200px;
			margin: 0 auto;
		}
		#tab-delete-member{
			border: 1px solid gray;
			margin: 0 auto;
		}
		.tr-update-space{
			border: 1px solid gray;
			height: 25px;
		}
		#td-delete-title{
			border: 1px solid gray;
			font-size: 30px;
		}
		#tab-delete-lastCheck{
			border: 1px solid gray;
		}
		#tab-delete-lastCheck tr{
			border: 1px solid gray;
		}
		#tab-delete-lastCheck tr td{
			border: 1px solid gray;
			width: 175px;
		}
		#form-delete{
			border: 1px solid gray;
			margin: 0 auto;
		}

	</style>
</head>
<body>
	<div class="header">
  <h1>임시</h1>
</div>
	<section>
	<div>
		<div class="column">
			<table>
				<tr>
					<td>환영합니다. ${loginUser.name} 님</td>
				</tr>
				<tr >
					<td rowspan="4"></td>
				</tr>
				<tr>
					<td>
						<a id="a-delete-potoUpload" href="#">사진 올리기</a>
					</td>
				</tr>
				<tr></tr>
			</table>
		</div>
		<div class="column">
			<table>
				<tr>
					<td>MY M·A·C
						<a id="a-delete-logout" href="#"></a>
					</td>
				</tr>
				<tr>	
					<td>
						<a id="a-delete-mypage" href="#">마이 페이지</a>
					</td>
				</tr>
				<tr>
					<td>
						<a id="a-delete-select" href="#">나의 맥 셀렉트</a>
					</td>
				</tr>
				<tr>	
					<td>
						<a id="a-delete-update" href="#">내 정보 확인 및 수정</a>
					</td>
				</tr>
				<tr>
					<td>
						<a id="a-delete-orderCheck" href="#">주문 배송 죄회</a>
					</td>
				</tr>
				<tr>
					<td>
						<a id="a-delete-addList" href="#">배송지 리스트</a>
					</td>		
				</tr>
			</table>
		</div>
		<div class="column">
			<table>
				<tr>
					<td>
						<a id="a-delete-beforeOrder" href="#">지난 구매제품 보기</a>
					</td>
				</tr>
				<tr>	
					<td>
						<a id="a-delete-wishList" href="#">위시 리스트</a>
					</td>
				</tr>
			</table>
		</div>
		<div class="column">
			<table>
				<tr>
					<td>
						<a id="a-delete-beforeOrder" href="#">베이직(SEDUCED)</a>
					</td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td>고객님의 현재 구매금액은 ~~원 입니다.</td>
				</tr>
				<tr>
					<td>다음 DEVOTED 등급이 되기 위해서는 200,000원의</td>
				</tr>
				<tr>
					<td>추가 구매가 필요합니다.</td>
				</tr>
				<tr>	
					<td>
						<a id="a-delete-wishList" href="#">내 모든 혜택보기</a>
					</td>
				</tr>
			</table>
		</div>																											
	</div>
</section>

<form id="form-delete">
	<table id="tab-delete-member">
		<tr class="tr-update-space">
		</tr>
		<tr>
			<td id="td-delete-title">회원 탈퇴하기</td>
		</tr>
		<tr class="tr-update-space">
		</tr>
		<tr>
			<td>회원 탈퇴를 하시면 맥 신제품 소식 및 이벤트 행사 내용과 관련된 정보를 제공받으실 수 없고, 관련된 서비스의 제공이 불가능하게 됩니다.</td>
		</tr>
		<tr>
			<td>신중히 고려하신 후 회원 탈퇴 '확인' 버튼을 눌러 주시기 바랍니다.</td>
		</tr>
		<tr>
			<td>회원님의 탈퇴 이유를 체크해 주세요. 탈퇴하시는 이유를 파악하여 보다 나은 서비서를 제공하는데 활용하고자 합니다.</td>
		</tr>
		<tr>
			<td>
				<input type="checkbox" /> 개인정보 유출에 대한 위험
			</td>
		</tr>
		<tr>
			<td>
				<input type="checkbox" /> 잦은 시스템 장애
			</td>
		</tr>
		<tr>
			<td>
				<input type="checkbox" /> 이용빈도 저조
			</td>
		</tr>
		<tr>
			<td>
				<input type="checkbox" /> 필요한 제품 및 메이크업 관련 정보가 충분치 않아서
			</td>
		</tr>
		<tr>
			<td>
				<input type="checkbox" /> 고객 서비스에 대한 불만
			</td>
		</tr>
		<tr>
			<td>
				<input type="checkbox" /> 이메일 뉴스레터 발송이 너무 잦아서
			</td>
		</tr>
		<tr>
			<td>
				<input type="checkbox" /> 기타
			</td>
		</tr>
		<tr>
			<td rowspan="2" colspan="3">
				<input type="text" />
			</td>
		</tr>
		<tr class="tr-update-space">
		</tr>
		<tr class="tr-update-space">
		</tr>
		<tr>
			<td>PASSWORD 확인 </td>
		</tr>
		<tr>
			<td>
				<input id="inp-delete-pass" name="inp-delete-pass" type="text" />
			</td>
		</tr>
		<tr class="tr-update-space">
		</tr>
		<tr>
			<td>
				<button id="btn-delete-enter">탈퇴하기</button>
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
		$('#btn-delete-enter').on('click',function(){
			alert("탈퇴하기 클릭");
			$('#form-delete')
			.attr('action','${path.context}/delete/end')
			.attr('method','post')
			.submit();
		})
	</script>
</html>

