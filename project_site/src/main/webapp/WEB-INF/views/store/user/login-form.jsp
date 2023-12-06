<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/navbar.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
<title></title>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-2"></div>
		<div class="col-10">
			<h1 class="mt-3">로그인</h2>
		</div>
	</div>
	
	<div class="row" style="float: none; margin: 100 auto;">
		<div class="col-4" style="float: none; margin: 0 auto;">
			<form>
				<div class="mb-3">
					<label>아이디</label>
					<input type="text" class="mt-2 form-control form-control-sm"/>
				</div>
				<div class="mb-3">
					<label>비밀번호</label>
					<input type="password" class="mt-2 form-control form-control-sm"/>
				</div>
				
				<div class="row">
					<div class="col-6">
						<h ref="../register" class="text-first btn btn-secondary btn-sm">회원가입</h>
					</div>
					<div class="col-6 text-end">
						<h ref="../home" class="btn btn-secondary btn-sm">취소</h>
						<button type="submit" class="btn btn-primary btn-sm">로그인</button>
					</div>
				</div>
			</form>
		</div>
	</div>
		
		
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>