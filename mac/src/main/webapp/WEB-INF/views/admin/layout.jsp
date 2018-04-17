<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">   
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Document</title>
	<script src="${path.js}/jquery-3.3.1.min.js"></script>
	<script src="${path.js}/bootstrap.js"></script>
	<link rel="stylesheet" href="${path.css}/bootstrap.css" />
    <link rel="stylesheet" href="${path.css}/bootstrap-theme.css" />
    <link rel="stylesheet" href="${path.css}/magnific-popup.css" />
  <style>
  
/*  total  */ 
	.div-custMana-frame {
	  display: grid;
	  grid-template-columns: auto auto;
	  grid-gap: 10px;
	  background-color: #7b7b82;
	  padding: 10px;
	  height: 900px;
	  width: 92%;
	  margin: 0 auto;
	  font-size: 18px;
	}
	.div-custMana-frame > div {
	  background-color: rgb(222, 239, 239);
	  border: 1px solid black;
	 /*  text-align: center; */
	  height: 98%;
	}
	.div-custMana-left{
	  grid-template-row: auto auto auto;
	  width : 210px;
	  text-align: center;
	}
	.div-custMana-left > div{
	 	 margin-top: 37px;
	 	 font-size: 30px;
	}
	.div-custMana-left > div > button{
		  width: 100px;
		  height: 40px;
		  font-size: 15px;
	}
	
/*  custMana  */	
	.div-custMana-right{
	  grid-template-row: auto auto auto auto auto;
	  width : 1200px;
	}
	.div-custMana-right > div{
		  border: 1px solid black;
	}
	.div-custMana-right > div > div > button {
	  border: 1px solid black;
 	  width: 70px;
	  height: 30px;
	}
	.div-custMana-title1{
		margin-left: 1px;
		font-size: 18px;
	}
	.div-custMana-title2{
		margin-left: 1px;
		font-size: 30px;
	}
	.div-custMana-search{
		text-align: center;
		margin-top: 30px;	
	}
	.div-custMana-list{
	    grid-template-row: auto auto auto auto auto;
		width: 1100px;
		height: 250px;
		border: 1px solid black;
		text-align: center;
		margin: 0 auto;
		margin-top: 20px;
	}
	.div-custMana-list > div {
		 border: 1px solid black;
	}
	.div-custMana-listIn{
		display: grid;
		grid-template-columns: 5fr 3fr 3fr 3fr 3fr 4fr 4fr 3fr;
		border: 1px solid black;
	}
	.div-custMana-listIn > div {
		border: 1px solid black;	
	}
	.div-custMana-detailSearch {
		border: 1px solid black;	
		text-align: center;
	}
	#div-custMana-page {
		text-align: center;
	}
	
/*  addItem  */		
	.div-addItem-title1{
		margin-left: 1px;
		font-size: 18px;
	}
	.div-addItem-title2{
		margin-left: 1px;
		font-size: 30px;
	}
	.div-addItem-rightDetail {
		 display: grid;
	     grid-template-columns: 1fr 4fr;
	     grid-gap: 5px;
		 background-color: #7b7b82;
		 padding: 10px;
	     height: 600px;
	  	 width: 92%;
		 margin: 0 auto;
		 font-size: 18px;
	}
	.div-addItem-rightDetail > div {
	  background-color: rgb(151, 199, 239);
	  border: 1px solid black;
	 /*  text-align: center; */
	  height: 99%;
	}
	.div-addItem-rigDetLeft {
		width : 210px;
		text-align: center;
	}
	.div-addItem-rigDetLeft > div {
		  border: 1px solid black;	
	}
	.div-addItem-rigDetRight {
	    width : 870px; 
	  text-align: center; 
	}
	.div-addItem-rigDetRight > div {
		  border: 1px solid black;
	}
	#sel-addItem-choice {
		margin-left: 95px;
	}
	#inp-addItem-itemName {
		margin-left: 75px;
	}
	.int-addItem-insert {
		margin-left: 95px;
	}
	#btn-addItem-insert {
		width: 70px;
	/* 	height: 25px; */
		margin-left: 1080px; 
	}
	
/*  itemList  */
	.div-itemList-frame {
	  display: grid;
	  grid-template-columns: auto auto;
	  grid-gap: 10px;
	  background-color: #7b7b82;
	  padding: 10px;
	  height: 900px;
	  width: 92%;
	  margin: 0 auto;
	  font-size: 18px;
	}
	.div-itemList-frame > div {
	  background-color: rgb(222, 239, 239);
	  border: 1px solid black;
	 /*  text-align: center; */
	  height: 98%;
	}
	.div-itemList-left{
	  grid-template-row: auto auto auto;
	  width : 210px;
	  text-align: center;
	}
	.div-itemList-left > div{
	 	 margin-top: 37px;
	 	 font-size: 30px;
	}
	.div-itemList-left > div > button{
		  width: 100px;
		  height: 40px;
	}
	.div-itemList-right{
	  grid-template-row: auto auto auto auto auto;
	  width : 1200px;
	}
	.div-itemList-right > div{
		  border: 1px solid black;
	}
	.div-itemList-right > div > div > button {
	  border: 1px solid black;
 	  width: 70px;
	  height: 30px; 
	}
	.div-itemList-title1{
		margin-left: 1px;
		font-size: 18px;
	}
	.div-itemList-title2{
		margin-left: 1px;
		font-size: 30px;
	}
	.div-itemList-search{
		text-align: center;
		margin-top: 30px;	
	}
	.div-itemList-list{
	    grid-template-row: auto auto auto auto auto;
		width: 1100px;
		height: 250px;
		border: 1px solid black;
		text-align: center;
		margin: 0 auto;
		margin-top: 20px;
	}
	.div-itemList-list > div {
		 border: 1px solid black;
	}
	.div-itemList-listIn{
		display: grid;
		grid-template-columns: 5fr 3fr 3fr 3fr 3fr 4fr 4fr 3fr;
		border: 1px solid black;
	}
	.div-itemList-listIn > div {
		border: 1px solid black;	
	}
	.div-itemList-detailSearch {
		border: 1px solid black;	
		text-align: center;
	}
	#div-itemList-page {
		text-align: center;
	}
  </style>
</head>

<body>
  <div class="div-custMana-frame">
	  <div class="div-custMana-left">
	  	 <div>관리자 페이지</div>
	  	 <div>
	  		<button id="button-custMana-custMana">회원 리스트</button>
	  	 </div>
	     <div>
	    	  <button id="button-custMana-addItem">상품 등록</button>
	     </div>
	     <div>
	    	  <button id="button-custMana-itemList">상품 리스트</button> 
	     </div>
	  </div>
	  <div class="div-custMana-right"> 
	     
 		 <section>
      		<div id="content">
         		<tiles:insertAttribute name="content"/>
      		</div>
   		 </section>
	  
	  </div>
   </div>
   
</body>

	<script>
		$('#button-custMana-custMana').on('click',function(){
			alert("회원 리스트 클릭");
			location.href="${path.context}/admin/member";
		});  
		$('#button-custMana-addItem').on('click',function(){
			alert("상품 추가 클릭");
			location.href="${path.context}/admin/addItem";
		});
		$('#button-custMana-itemList').on('click',function(){
			alert("상품 리스트 클릭");
			location.href="${path.context}/admin/itemList";
		}); 
	</script>
</html>
