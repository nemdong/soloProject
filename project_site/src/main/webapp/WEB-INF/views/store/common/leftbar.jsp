<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
<title>애플리케이션</title>
</head>
<style>
{
  box-sizing: border-box; 
}
  
.que:first-child{
    border-top: 1px solid black;
  }
  
.que{
  position: relative;
  padding: 17px 0;
  cursor: pointer;
  font-size: 16px;
  border-bottom: 1px solid #dddddd;
  
}
  
.que::before{
  display: inline-block;
  content: ' ';
  font-size: 16px;
  color: #006633;
  margin: 0 5px;
}

.que.on>span{
  font-weight: bold;
  color: #006633; 
}
  
.anw {
  display: none;
  overflow: hidden;
  font-size: 14px;
}
  
.anw::before {
  display: inline-block;
  font-size: 14px;
  font-weight: bold;
  color: #666;
  margin: 0 5px;
}

.arrow-wrap {
  position: absolute;
  top:50%; right: 10px;
  transform: translate(0, -50%);
}

.que .arrow-top {
  display: none;
}
.que .arrow-bottom {
  display: block;
}
.que.on .arrow-bottom {
  display: none;
}
.que.on .arrow-top {
  display: block; 
}

</style>
<body>
<div class="container mt-3">
</head>
<body>

<div id="Accordion_wrap">
     <div class="que ${menu1 eq '신발' ?'on' : '' }">
     	 <span>신발</span>
     </div>
     <div class="anw" style="${menu1 eq '의류' ?'display : block;' : '' }">
	     <div class="list-group ">
			<span><a href="all" class="list-group-item list-group-item-action border-0 ${menu2 eq '전체' ? 'active' : '' }">전체</a></span>
			<span><a href="top" class="list-group-item list-group-item-action border-0 ${menu2 eq '나이키' ? 'active' : '' }">나이키</a></span>
			<span><a href="bottom" class="list-group-item list-group-item-action border-0 ${menu2 eq '아디다스' ? 'active' : '' }">아디다스</a></span>
			<span><a href="shoes" class="list-group-item list-group-item-action border-0 ${menu2 eq '컨버스' ? 'active' : '' }">컨버스</a></span>
		 </div>
     </div>
     
     <div class="que ${menu1 eq '게시판' ?'on' : '' }">
     	<span>게시판</span>
     </div>
     <div class="anw" style="${menu1 eq '게시판' ?'display : block;' : '' }">
	     <div class="list-group ">
			<span><a href="free" class="list-group-item list-group-item-action border-0 ${menu2 eq '자유게시판' ? 'active' : '' }">자유게시판</a></span>
			<span><a href="question" class="list-group-item list-group-item-action border-0 ${menu2 eq '문의게시판' ? 'active' : '' }">문의게시판</a></span>
		 </div>
     </div>
     
     <div class="que ${menu1 eq '고객센터' ?'on' : '' }">
      	<span>고객센터</span>
     </div>
     <div class="anw" style="${menu1 eq '고객센터' ?'display : block;' : '' }">
     	<div class="list-group ">
			<span><a href="#" class="list-group-item list-group-item-action border-0 ${menu2 eq 'Q&A' ? 'active' : '' }">Q&A</a></span>
		</div>
     </div>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$(".que").click(function() {
		$(this).next(".anw").stop().slideToggle(300);
		$(this).toggleClass('on').siblings().removeClass('on');
		$(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
	});
});

</script>
</body>
</html>