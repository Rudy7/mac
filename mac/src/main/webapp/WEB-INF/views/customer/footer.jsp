<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.div-footer-all{
  margin-top: 50px;
  display: grid;
  grid-template-row: 9fr 2fr;
  grid-gap: 10px;
  padding: 10px;
  height:400px;
  width: 100%;
  background-color: #383736;  
}
.div-footer-incluUp{
  width: 80%;
  margin: 0 auto;
}
.div-footer-up{
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
  grid-gap: 10px;
  background-color: #eaa060;
/*   padding: 10px; */
  height:290px;
}
.div-footer-up > div{
  background-color: rgb(61, 60, 60);
  border: 1px solid black;
  text-align: center;
  /* font-size: 30px;	 */
}

.div-footer-down {
  display: grid;
  grid-template-row: 1fr 1fr;
  grid-gap: 5px;
  background-color: #2196F3;
  /* padding: 10px; */
  height:72px;
}
.div-footer-down > div {
  background-color: rgb(0, 0, 0);
  border: 1px solid black;
  text-align: center;
  /* font-size: 30px; */
  height:30px;
}
</style>
</head>
<body>
<div class="div-footer-all">
	<div class="div-footer-incluUp">
  		<div class="div-footer-up">
			<div>1</div>
	  		<div>2</div>
	  		<div>3</div>  
	  		<div>4</div>
	  		<div>5</div>
 	 	</div>
	</div> 	 	
  <div class="div-footer-down">
  	<div>1</div>
  	<div>2</div>
  </div>

</div>
</body>
</html>
