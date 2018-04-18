<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
		#tab-login-title{
			border: 1px solid gray; 
			margin: 0 auto;
			margin-top: 60px;
		}
		#td-login-title{
			border: 1px solid gray;
			font-size: 40px;
		}
		#tab-login{
			border: 1px solid gray; 
			margin: 0 auto;	
			margin-top: 80px;	
		}
		#td-login-text{
			border: 1px solid gray;
			font-size: 12px;
		}
		#tab-login tr{
			border: 1px solid gray; 
			width: 320px;
			/* margin: 0 auto;	 */
			height: 50px;	
		}
		#tab-login tr td{
			border: 1px solid gray; 
			width: 320px;	
			/* margin: 0 auto;	 */
			height: 50px;
		}
		.int-login{
			width: 96%;
			height: 70%;	
		}
		#btn-login{
			width: 320px;
			height: 54px;
		}
		#a-login-searchPass{
			margin-bottom: 30px;
			font-size: 12px;
			border: 1px solid gray; 
		}
	</style>
</head>
<body>
		<table id="tab-login-title">
			<tr>
				<td id="td-login-title">관리자 로그인</td>
			</tr>
		</table>
	<form id="form-login">
	    
		<table id="tab-login">
		
			<tr>
				<td>
					<input id="inp-login-customId" name="inp-login-customId" class="int-login" type="text" value="admin" placeholder="*예시:USERNAME@NETWORT.CO.KR"/>
				</td>
				<td>
					<input id="inp-login-customPass" name="inp-login-customPass" class="int-login" type="text" value="admin" placeholder="*비밀번호"/>
				</td>
			</tr>
	
			<tr>
				<td>
					<button id="btn-login">로그인
					</button>
				</td>
				<td>
				</td>
			</tr>
		</table>
		
	</form>	
</body>
	<script>
		$('#btn-login').on('click',function(){
			alert("로그인 클릭");
			$('#form-login')
			.attr('action','${path.context}/admin/login')
			.attr('method','post')
			.submit();
		});
	
	</script>
</html>
