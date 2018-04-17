<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


	  	 <div>
	  		<div class="div-addItem-title1"> || 관리자 페이지 > 상품 등록</div>
	  	 </div>
	  	 <div>
	  		<div class="div-addItem-title2"> || 상품 등록</div>
	  	 </div>
	  	 	<br />
	  	 <div>
	  	 	 <select name="sel-addItem-choice" id="sel-addItem-choice">
	  	 	 	<option value="카테고리 선택">카테고리 선택</option>
	  	 		<option value="아이">아이</option>
	  	 		<option value="립">립</option>
	  	 		<option value="페이스">페이스</option>
	  	 		<option value="프라이머">프라이머</option>
	  	 		<option value="스킨케어">스킨케어</option>
	  	 		<option value="브러시">브러시</option>
	  	 		<option value="툴">툴</option>
	  	 		<option value="향수">향수</option>
	  	 	 </select>
	  	 	 <input id="inp-addItem-itemName" type="text" placeholder="*상품명을 입력하세요"/>
	  	 </div>		
	  	 	<br />
	  	 	
	  	 <div class="div-addItem-rightDetail">
	  	 	 	 <div class="div-addItem-rigDetLeft">등록 번호</div>
		  	 	 <div> 
		  	 	 	<input type="text" class="int-addItem-insert" />
		  	 	 </div>	 
			  	 <div class="div-addItem-rigDetLeft">아이템 코드</div>
		  	 	 <div> 
		  	 	 	<input type="text" class="int-addItem-insert"/>
		  	 	 </div>	
			  	 <div class="div-addItem-rigDetLeft">아이템 재고 수</div>
		  	 	 <div> 
		  	 	 	<input type="text" class="int-addItem-insert"/>
		  	 	 </div>	
			  	 <div class="div-addItem-rigDetLeft">판매 가격</div>
		  	 	 <div> 
		  	 	 	<input type="text" class="int-addItem-insert"/>
		  	 	 </div>	
			  	 <div class="div-addItem-rigDetLeft">색 설명</div>
		  	 	 <div> 
		  	 	 	<input type="text" class="int-addItem-insert"/>
		  	 	 </div>	
			  	 <div class="div-addItem-rigDetLeft">질감 설명</div>
		  	 	 <div> 
		  	 	 	<textarea rows="3" cols="50">
					</textarea>
		  	 	 </div>	
			  	 <div class="div-addItem-rigDetLeft">공통 설명</div>
		  	 	 <div> 
		  	 	 	<textarea rows="3" cols="50">
					</textarea>
		  	 	 </div>	
			  	 <div class="div-addItem-rigDetLeft">상세 정보</div>
		  	 	 <div> 
		  	 	 	<textarea rows="3" cols="50">
					</textarea>
		  	 	 </div>	
			  	 <div class="div-addItem-rigDetLeft">재료</div>
			  	 <div>
		  	 	 	<input type="text" class="int-addItem-insert"/>			  	 
			  	 </div>
			  	 <div class="div-addItem-rigDetLeft">무게</div>
		  	 	 <div> 
		  	 	 	<input type="text" class="int-addItem-insert"/>
		  	 	 </div>	
<!-- 		  	 <div class="div-addItem-rigDetRight">
		  	 </div> -->
	  	 </div>
	  	 <div>		
		  	 	 	<button id="btn-addItem-insert"> 추가 </button>		 	  	 	 
		 </div>
