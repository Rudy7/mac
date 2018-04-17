<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="div-second" class="" style="background:black; height:60px; padding:15px;">
	<a id="a-main" href="#" style="color:white;font-size: 20px; margin-left:100px;">M·A·C</a>
	<a id="a-new-item" href="#" style="color:white;font-size: 20px; padding:10px;">신제품</a>
	<a id="a-item" href="#" style="color:white;font-size: 20px; padding:10px;">제품</a>
	<a id="a-best" href="#" style="color:white;font-size: 20px; padding:10px;">베스트셀러</a>
	<a id="a-goodbye" href="#" style="color:white;font-size: 20px; padding:10px;">굿바이즈</a>
	<a id="a-brand" href="#" style="color:white;font-size: 20px; padding:10px;">브랜드</a>
	<a id="a-select" href="#" style="color:white;font-size: 20px; padding:10px;">맥셀렉트</a>
	<a id="a-find-store" href="#" style="color:white;font-size: 20px; padding:10px;">매장안내</a>
	<span id="span-search" class="glyphicon glyphicon glyphicon-search" aria-hidden="true" style="color:white;font-size: 20px; padding:10px; margin-left:150px;"> &nbsp;</span>
	<span id="span-email" class="glyphicon glyphicon glyphicon-envelope" aria-hidden="true" style="color:white;font-size: 20px; padding:10px;"> &nbsp;</span>
	<a id="a-login" href="#" style="color:white;font-size: 20px; padding:10px;">로그인</a>
<!-- Trigger the modal with a button -->
	<a style="height:30px; background:black; color:white; font-size:20px;" data-toggle="modal" data-target="#myModal">장바구니</a><!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog" style="display: none;">
		<div class="modal-dialog">  
<!-- Modal content-->
  			<div class="modal-content">
  				<div class="modal-header" id="div-modal">
  					<button type="button" class="close" data-dismiss="modal">×</button>
  						<h4 class="modal-title">장바구니</h4>
  							<a id="a-basket-update" href="#">수정</a>
  				</div>
  				<div class="modal-body" id="div-basket">
  					<div id="div-item1" class="">
  						<div id="div-item2" class="product cart-product js-cart-product">
  								<a id="a-item1" href="#">
  								<img src="/web/resources/img/item0.jpg" alt="Matte Lipstick" title="Matte Lipstick"></a>
  							<div id="div-item3" class="cart-product-column">
  								<div id="div-item4" class="cart-product-info">
  									<div id="div-item5" class="cart-product-name js-cart-product-name">
								 		 <a id="a-item-name0" href="#">매트립스틱</a>
  									</div>
  								</div>
  							</div>
 						 </div>
					</div>
				</div>
 				<div class="modal-footer">
  					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
  				</div>
  			</div>     
		</div>
	</div>
</div>
 
 