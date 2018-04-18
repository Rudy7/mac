<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<form action="">
  <div>
  		<div class="div-itemList-title1"> || 관리자 페이지 > 상품 리스트</div>
  	 </div>
  	 <div>
  		<div class="div-itemList-title2"> || 상품 리스트</div>
  	 </div>  
  	 <div class="div-itemList-total">
	  <div class="div-itemList-up">
	  	<div>
	  		단일 검색 &nbsp;&nbsp; 
	  		<select name="b-sel-itemList-oSearch" id="b-sel-itemList-oSearch" class="inp-itemList-glycal">
	  			<option value="카테고리 선택">카테고리 선택</option>
	  			<option value="아이">아이</option>
	  			<option value="립">립</option>
	  			<option value="페이스">페이스</option>
	  			<option value="프라이머">프라이머</option>
	  			<option value="스킨케어">스킨케어</option>
	  			<option value="브러시">브러시</option>
	  			<option value="툴">툴</option>
	  			<option value="향수">향수</option>	
	  		</select> &nbsp;&nbsp;
	  		<input type="text" placeholder="상품명을 입력하세요" class="inp-itemList-insItem"/>&nbsp; &nbsp;
	  		<button>검색</button>
	    </div>
	    <div class="div-itemList-detailSearch">
		    <div class="div-itemList-detail">상세 검색&nbsp;&nbsp;&nbsp;&nbsp;
		    	<select name="b-sel-itemList-dSearch" id="b-sel-itemList-dSearch" class="inp-itemList-glycal">
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
		    </div>
		    <div class="div-itemList-price">
		    	<div> &nbsp;&nbsp;판매 가격</div>
		    	<div >	
		    		<input class="inp-itemList-price" type="text"/>&nbsp;원
		    	</div>
		    	<div>~</div>
		    	<div>
		    	  <input class="inp-itemList-price" type="text"/>&nbsp;원		    	
		    	</div>
		    </div>
		    <div class="div-itemList-addDay">
		      <div>상품 등록일</div>
		      <div class="div-itemList-glyCal">
		        <button class="btn-itemList-glyCal" type="submit"><i class="glyphicon glyphicon-calendar"></i></button>
		      </div>
		      <div>
    	      	<input type="text" class="inp-itemList-glycal">
		      </div>
    	      <div>~&nbsp;&nbsp;</div>
    	       <div class="div-itemList-glyCal">
		        <button class="btn-itemList-glyCal" type="submit"><i class="glyphicon glyphicon-calendar"></i></button>
		      </div>
    	      <div>
    	      	<input type="text" class="inp-itemList-glycal">
    	      </div>	  
		    </div>
		    <div class="div-itemList-display">진열 여부 &nbsp;&nbsp;
		    	<input type="checkbox" />진열 &nbsp;&nbsp;
		    	<input type="checkbox" />품절 &nbsp;&nbsp;
		    	<input type="checkbox" />숨김 
		    </div>
            <div></div>		  
            <div>
		    	<button id="b-btn-itemList-detSearClick" class="b-btn-itemList-detSearClick">검색</button>
		    </div>
		</div>		    
	  </div> <br/><br/>
	  <div>
	  	총 등록 상품 : 0000개/ 검색된 상품: 0000개
	  </div>
	  <div>
	  	<div class="div-itemList-list">	
	      <div class="div-itemList-listIn">
	      	<div>선택</div>
	      	<div>번호</div>
	        <div>카테고리와 상품명</div>
	      	<div>판매가격(적립금)</div>
	        <div>진열상태</div>
	      	<div>등록일</div>
             <div>아이디</div>
	      	<div>수정/삭제</div>
	      </div>
	      <div class="di-itemList-listContent">
	      	<c:forEach begin="0" end="4" items="" step="1" var="loginUser" varStatus="i">
	        	<div> <input type="checkbox"/> </div>
	            <div>${loginUser.itemSeq}</div>
	            <div>${loginUser.commonName}<br/> ${loginUser.itemName}</div>
	            <div>${loginUser.price}<br/> ${loginUser.price}</div>
	            <div>${loginUser.}</div>
	            <div>${loginUser.joinDate}</div>
                <div>${loginUser.admin2}</div>
	            <div> <a href="#" id="b-a-itmeList-update">수정/삭제</a> </div>
	        </c:forEach>
	      </div>
	  	</div>    
	  </div>
	  
	  <div>
	  	<div class="div-itemList-btn">
	        <button>진열</button>&nbsp;
	        <button>숨김</button>&nbsp;
	        <button>품절</button>
	    </div>
	  </div>  
	</div>
    <div class="b-div-itemList-page" id="b-div-itemList-page">1  2  3  4  5 
     	<%-- <c:forEach begin="1" end="5" items="" step="" var="" varStatus="i">
     		<span id="b-span-itemList-pagination">
     			<a href="#">${i.index}</a>
     		</span>
     	</c:forEach> --%>
     </div>
</form>
