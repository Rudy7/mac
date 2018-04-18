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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  
/*  total  */ 
	.div-custMana-frame {
	  display: grid;
	  grid-template-columns: auto auto;
	  padding: 10px;
	  grid-gap: 10px;
	  background-color: #7b7b82;
	  height: 900px;
	  width: 91%;
	  margin: 0 auto;
	  font-size: 17px;
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
	.b-div-custMana-page {
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
	.b-sel-addItem-choice {
		margin-left: 95px;
	}
	.b-inp-addItem-itemName {
		margin-left: 75px;
	}
	.int-addItem-insert {
		margin-left: 95px;
	}
	.b-btn-addItem-insert {
		width: 70px;
	/* 	height: 25px; */
		margin-left: 1080px; 
	}
	
/*  itemList  */
	.div-itemList-title1{
		margin-left: 1px;
		font-size: 18px;
	}
	.div-itemList-title2{
		margin-left: 1px;
		font-size: 30px;
	}
	.div-itemList-total {
		  display: grid;
		  grid-template-row: auto auto auto;
		  grid-gap: 10px;
		  background-color: #deefef;
		  padding: 10px;
	}
	.div-itemList-total > div {
	  background-color: rgba(255, 255, 255, 0.8);
	  border: 1px solid black;
	  /* text-align: center; */
	  font-size: 18px;
	}
	.div-itemList-up {
	  display: grid;
	  grid-template-row: auto auto;
	  grid-gap: 5px;
	  border: 1px solid black;
	  padding: 5px;
	  background-color: #7b7b82;
	}
	.div-itemList-up > div{
	  border: 1px solid black;
	  text-align: center;
	  background-color: rgb(222, 239, 239);
	}
	.div-itemList-detailSearch{
		display: grid;
		grid-template-columns: 1fr 1fr;
		grid-gap: 5px;
		background-color: #7b7b82;
		padding: 10px;
		/* height: 80px; */
		width: 100%;
		margin: 0 auto;	
		border: 1px solid black;	
	}
	.div-itemList-detailSearch > div{
		 background-color: rgb(222, 239, 239);
 		 border: 1px solid black;
		 /*  text-align: center; */
		  height: 98%;
	}
    .b-btn-itemList-detSearClick {
    	border: 1px solid black;
    	float: right;
    }
	.div-itemList-list {
		border: 1px solid black; 
		text-align: center;
	    width: 1154px; 
	   /*  heigh: 300px; */
	    margin: 0 auto;
       /*  border-radius:15px; */
	}
	.div-itemList-listIn {
		display: grid;
	  	grid-template-columns: auto auto auto auto auto auto auto auto;
		border: 1px solid black; 
	}
	.di-itemList-listContent {
		border: 1px solid black;
		height: 220px;
	}
	.div-itemList-btn {
		border: 1px solid black;
		margin-left: 950px;
	}
	.div-itemList-addDay {
		display: grid;
	  	grid-template-columns: 3fr 0fr 4fr 1fr 4fr; 
	}
	.inp-itemList-glycal {
	 	width: 160px; 
	 	height: 29px;
	} 
	.inp-itemList-insItem{
		height: 29px;
		width: 180px;
	}
	.div-itemList-price{
		display: grid;
	  	grid-template-columns: 5fr 8fr 2fr 8fr; 
	}
	.inp-itemList-price {
		width: 140px;
		height: 27px;
	}
  </style>
</head>

<body>
  <div class="div-custMana-frame">
	  <div class="div-custMana-left">
	  	 <div>관리자 페이지</div>
	  	 <div>
	  		<button id="b-button-custMana-custMana">회원 리스트</button>
	  	 </div>
	     <div>
	    	  <button id="b-button-custMana-addItem">상품 등록</button>
	     </div>
	     <div>
	    	  <button id="b-button-custMana-itemList">상품 리스트</button> 
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
		$('#b-button-custMana-custMana').on('click',function(){
			alert("회원 리스트 클릭");
			location.href="${path.context}/admin/member";
		});  
		$('#b-button-custMana-addItem').on('click',function(){
			alert("상품 추가 클릭");
			location.href="${path.context}/admin/addItem";
		});
		$('#b-button-custMana-itemList').on('click',function(){
			alert("상품 리스트 클릭");
			location.href="${path.context}/admin/itemList";
		}); 
	</script>
</html>
