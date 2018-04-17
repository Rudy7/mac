<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<form action="">	
	<div>
		<div class="div-custMana-title1"> || 관리자 페이지 > 회원 리스트</div>
	 </div>
	 <div>
	  	<div class="div-custMana-title2"> || 회원 리스트</div>
	 </div>
	  	 <div class="div-custMana-search">1
  	 		<select name="sel-custMana-search" id="sel-custMana-search">
  	 			<option value="선택">선택</option>
  	 			<option value="customId">아이디</option>
  	 			<option value="name">이름</option>
  	 			<option value="email">이메일</option>
  	 			<option value="phoneNum">전화번호</option>	  	 		
  	 		</select> 
  	 		<input type="text" placeholder="내용을 입력해 주세요" />
  	 		<button>검색</button>
	     </div>
	     <div class="div-custMana-detailSearch">2
	     	<div>
		     	가입일 <input type="text" /> - <input type="text" />
		     	구매금액  <input type="text" />원 ~ <input type="text" />원	     	
	     	</div>
	     	<div>	
	     		회원 등급 
	     		<select name="sel-custMana-grade" id="sel-custMana-grade">
	     			<option value="선택">선택</option>
	  	 			<option value="1">1</option>
	  	 			<option value="2">2</option>
	  	 			<option value="3">3</option>
	  	 			<option value="4">4</option>	 	
	     	    </select>
	     	    적립금 <input type="text" />원 ~ <input type="text" />원	  
	     	</div>
	     	<div>
	     		메일수신 <input type="radio" />수신 <input type="radio" />거부
	     	</div>
	     	<div>
	     		<button>상세검색</button>
	     	</div>
	     </div>
	     <div>
	     	회원등급: 1.스타일샾 회원({00}명), 2.오픈샾 회원({00}명), 3.고객센터({0}명), 4.운영팀({00}명), 5사업팀({00}명)                             
	     </div>
	     	<br>
	     	<br>
	     	<br>
	     <div>
	     	<div class="div-custMana-list">
	     		<div class="div-custMana-listIn">
	     			<div>가입일</div>
	     			<div>아이디</div>
	     			<div>이름</div>
	     			<div>회원등급</div>
	     			<div>구매금액</div>
	     			<div>폰번호</div>
	     			<div>이메일</div>
	     			<div>수정/삭제</div>
	     		</div>
	    	 	<c:forEach begin="0" end="4" items="" step="1" var="loginUser" varStatus="i">
	     			<div class="div-custMana-listContents">
	     			<div>${loginUser.joinDate}</div>
	     			<div>${loginUser.customId}</div>
	     			<div>${loginUser.name}</div>
	     			<div>${loginUser.gradeCode}</div>
	     			<div>${loginUser.totalPrice}</div>
	     			<div>${loginUser.phoneNum}</div>
	     			<div>${loginUser.email}</div>
	     			<div>
		     			<a href="#" id="a-custMana-update">수정/</a>
		     			<a href="#" id="a-custMana-delete">삭제</a>	     			
	     			</div>
	     			</div>
	     		</c:forEach>
	     	</div>
	     </div>
	     <div id="div-custMana-page"> < 1 2 3 4 5 > 
	     	<%-- <c:forEach begin="1" end="5" items="" step="" var="" varStatus="i">
	     		<span id="span-custMana-pagination">
	     			<a href="#">${i.index}</a>
	     		</span>
	     	</c:forEach> --%>
	     </div>
	  </form>