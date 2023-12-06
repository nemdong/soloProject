<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="tags.jsp" %>
<nav class="navbar navbar-expand-sm text-dark mb-3">
	<div class="container">
		<ul class="navbar-nav me-auto">
			<li class="nav-item mt-3"><h2><a href="/home" class="nav-link" ><strong>Dong's shoes</strong></a></h2></li>
		</ul>
		<ul class="navbar-nav me-auto">
		<form class="mt-4">
			<table>
				<colgroup>
					<col width="50%">
					<col width="40%">
				</colgroup>
				<tbody>
					<tr>
						<td>
							<input type="text" style="width:400px; "/>
						</td>
						<td>
							<button class="btn ml-2">검색</button>
						</td>
					</tr>
				</tbody>
			</table>
		</form>	
		</ul>
		<!-- <sec:authorize access="isAuthenticated()">
			<span class="navbar-text"><strong class="text-white"><sec:authentication property="principal.name"/></strong>님 환영합니다.</span>
		</sec:authorize>
		 -->
		<ul class="navbar-nav me-auto">
			<sec:authorize access="isAuthenticated()">
				<sec:authorize access="hasRole('ROLE_CUSTOMER')">
					<li class="nav-item"><a class="nav-link ${menu eq 'customer' ? 'active' : '' }" href="/customer/info">내정보 보기</a></li>
				</sec:authorize>
				<li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a></li>
			</sec:authorize>
			<sec:authorize access="!isAuthenticated()">
				<li class="nav-item"><a class="nav-link ${menu eq 'login' ? 'active' : '' }" href="/store/login-form">로그인</a></li>
				<li class="nav-item"><a class="nav-link ${menu eq 'register' ? 'active' : '' }" href="/store/register">회원가입</a></li>				
			</sec:authorize>

		
			<c:if test="${not empty loginUser }">
				<span class="navbar-text"><strong class="text-white">${loginUser.name }</strong>님 접속중</span>
			</c:if>
		</ul>
	</div>
</nav>
<div class="col-12 border-bottom"></div>

<form method="post" action="logout" id="form-logout">
	<sec:csrfInput />
</form>
<script>
	function logout(event) {
		event.preventDefault();
		document.getElementById("form-logout").submit();
	}
</script>
