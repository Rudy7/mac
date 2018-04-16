<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<script src="${path.js}/jquery-3.3.1.min.js"></script>
	<script src="${path.js}/bootstrap.js"></script>
	<style>
		#tab-custMana-frame{
			border: 1px solid gray;
			width: 99%;
		    height: 650px;
		}
		#tab-custMana-frame tr{
			border: 1px solid gray;
			height: 95%;
		}
		#tab-custMana-frame tr td{
			border: 1px solid gray;
			width: 222px;
		}
		#td-custMana-left div{
			border: 1px solid gray;
			height: 45px;
			margin-top: 10px;
		}
		#td-custMana-left{
			border: 1px solid gray;
			margin-top: 90px;
		}
		#td-custMana-left :hover{
			background: gray;
		}
		#div-custMana-custMana{
			border: 1px solid gray;
			background: silver;
		}
		#div-custMana-addItem{
			border: 1px solid gray;
			background: gray;
		}
		#div-custMana-itemList{
			border: 1px solid gray;
			background: silver;
		}
		.btn-left{
			width: 100%;
			height: 100%;
		}
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
				<div>
					3
				</div>
				<div>
					3
				</div>
				<div>
					3
				</div>
				<div>
					3
				</div>
				<div>
					3
				</div>
				<div>
				4
				</div>
				<div>
				4
				</div>
				<div>
				4
				</div>
				<div>
				4
				</div>
				<div>
				4
				</div>
				<div>
				4
				</div>
				<div>
				1
				</div>
			</td>

		</tr>
	</table>
</body>
	<script>
	$('#div-custMana-custMana').on('click',function(){
		alert("상품 등록 클릭");
		location.href="${path.context}/custMana";
	});
	$('#div-custMana-itemList').on('click',function(){
		alert("상품 목록 클릭");
		location.href="${path.context}/itemList";
	});
	</script>
</html>

