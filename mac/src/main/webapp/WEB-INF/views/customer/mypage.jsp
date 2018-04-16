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
		    height: 245px;
		    
		}
		.column-center {
			border: 1px solid gray; 
		    float: left;
		    width: 33.15%;
		    display: flex;
		    display: block;
		    flex-direction: row;
		    align-items: center;
		    height: 290px;
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
		.tr-update-space{
			border: 1px solid gray;
			height: 25px;
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
						<a id="a-mypage-potoUpload" href="#">사진 올리기</a>
					</td>
				</tr>
				<tr></tr>
			</table>
		</div>
		<div class="column">
			<table>
				<tr>
					<td>MY M·A·C
						<a id="a-mypage-logout" href="#"></a>
					</td>
				</tr>
				<tr>	
					<td>
						<a id="a-mypage-mypage" href="#">마이 페이지</a>
					</td>
				</tr>
				<tr>
					<td>
						<a id="a-mypage-select" href="#">나의 맥 셀렉트</a>
					</td>
				</tr>
				<tr>	
					<td>
						<a id="a-mypage-update" href="#">내 정보 확인 및 수정</a>
					</td>
				</tr>
				<tr>
					<td>
						<a id="a-mypage-orderCheck" href="#">주문 배송 죄회</a>
					</td>
				</tr>
				<tr>
					<td>
						<a id="a-mypage-addList" href="#">배송지 리스트</a>
					</td>		
				</tr>
			</table>
		</div>
		<div class="column">
			<table>
				<tr>
					<td>
						<a id="a-mypage-beforeOrder" href="#">지난 구매제품 보기</a>
					</td>
				</tr>
				<tr>	
					<td>
						<a id="a-mypage-wishList" href="#">위시 리스트</a>
					</td>
				</tr>
				<tr>
					<td>					
						<a id="a-mypage-admin" href="#">관리자</a>
					</td>
				</tr>
			</table>
		</div>
		<div class="column">
			<table>
				<tr>
					<td>
						<a id="a-mypage-beforeOrder" href="#">베이직(SEDUCED)</a>
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
						<a id="a-mypage-wishList" href="#">내 모든 혜택보기</a>
					</td>
				</tr>
			</table>
		</div>																											
	</div>
</section>
<table>
	<tr class="tr-update-space">
	</tr>
	<tr class="tr-update-space">
	</tr>
</table>
<section>
	<div>
		<div class="column-center">
			<table>
				<tr>
					<td>최근 주문내역과 위시 리스트</td>
				</tr>
			</table>
		</div>
		<div class="column-center">
			<table>
				<tr>
					<td>최근 주문내역이나 위시 리스트가 없습니다.</td>
				</tr>
				<tr >
					<td>
						<a id="a-mypage-macMain" href="#">쇼핑하러 가기!</a>
					</td>
				</tr>
			</table>
		</div>
		<div class="column-center">

		</div>
	</div> 
</section>

<div class="header">
  <h1>임시</h1>
</div>

</body>
	<script>
		$('#a-mypage-update').on('click',function(){
			alert("내 정보 확인 및 수정 클릭");
			location.href="${path.context}/update";
		});
		$('#a-mypage-admin').on('click',function(){
			alert("관리자 클릭");
			location.href="${path.context}/custMana";
		})
	</script>
</html>

