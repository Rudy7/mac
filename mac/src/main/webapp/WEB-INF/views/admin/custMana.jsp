<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<script src="${path.js}/jquery-3.3.1.min.js"></script>
	<script src="${path.js}/bootstrap.js"></script>
	<style>

	</style>
</head>
<body>
	<table id="tab-custMana-frame">
		<tr>
			<td id="td-custMana-left">
				<div></div>
				<div>
					<button id="div-custMana-custMana" class="btn-left" >회원 관리</button>
				</div>
				<div >
					<button id="div-custMana-addItem" class="btn-left">상품 등록</button>
				</div>
				<div >
					<button id="div-custMana-itemList" class="btn-left">상품 목록</button>
				</div>
				<div> </div>
				<div> </div>
				<div> </div>
				<div> </div>	
			</td>
			<td colspan="4">
				<table id="tab-custMana-right">
					<thead>
						<tr>
							<td colspan="2" rowspan="2">회원 관리 리스트</td>
						</tr>
						<tr>
							<td colspan="4">
								<input type="text" /> 
							</td>
							<td>
								<button>검색</button> 
							</td>
							<td>
								<button id="btn-custMana-addcust">회원추가</button>
							</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="text-center">아이디</td>
							<td class="text-center">비밀번호</td>
							<td class="text-center">이름</td>
							<td class="text-center">이메일</td>
							<td class="text-center">전화번호</td>
							<td class="text-center">가입날짜</td>
							<td class="text-center">수정</td>
							<td class="text-center">삭제</td>
						</tr>
						<tr>
							<td colspan="8">고객정보가 없습니다</td>
						</tr>
					<%-- 	<tr>
							<td class="text-center">${login.customId}</td>
							<td class="text-center">${login.customPass}</td>
							<td class="text-center">${login.name}</td>
							<td class="text-center">${login.email}</td>
							<td class="text-center">${login.phoneNum}</td>
							<td class="text-center">${login.joinDate}</td>
							<td class="text-center"></td>
							<td class="text-center"></td>
						</tr> --%>
					</tbody>
					<tfoot>
					
					</tfoot>
				</table>
			</td>
		</tr>
	</table>
</body>
	<script>
/* 		$('#div-custMana-addItem').on('click',function(){
			alert("상품 등록 클릭");
			location.href="${path.context}/addItem";
		});
		$('#div-custMana-itemList').on('click',function(){
			alert("상품 목록 클릭");
			location.href="${path.context}/itemList";
		});
		$('#btn-custMana-addcust').on('click',function(){
			alert("고객추가 클릭");
			location.href="${path.context}/join"
		}); */
	</script>
</html>
