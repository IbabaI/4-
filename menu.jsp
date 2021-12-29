<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%
	String sessionId =(String)session.getAttribute("sessionId");
%> --%>
<nav class="navbar navbar-expand navbar-dark bg-dark">
<div class="container">
  <div class="navbar-header">
  	<a class="navbar-brand" href="<c:url value="/main.jsp"/>" >Home</a>
  </div>
  <div>
  	<ul class="navbar-nav mr-auto">
  	   <c:choose>
  	     <c:when test="${empty sessionId}"><%-- ${sessionId==null} --%>
  	        <li class="nav-item">
  	          <a class="nav-link" href="<c:url value="/member/loginMember.jsp" />">로그인</a>
  	          <a class="nav-link" href="<c:url value="/member/addMember.jsp" />">회원 가입</a>
  	        </li>
  	     </c:when>
  	     <c:otherwise>
  	       <li style="padding-top:7px; color:white;">[${sessionScope.sessionId}님]</li>
  	       <li class="nav-item"><a class="nav-link" href="<c:url value="/member/logoutMember.jsp"/>">로그아웃</a></li>
  	       <li class="nav-item"><a class="nav-link" href="<c:url value="/member/updateMember.jsp"/>">회원 수정</a></li>
  	     </c:otherwise>
  	  </c:choose>
  	  <li class="nav-item"><a class="nav-link" href="<c:url value="/productsTop.jsp"/>">TOP</a>
  	  <li class="nav-item"><a class="nav-link" href="<c:url value="/productsBottom.jsp"/>">BOTTOM</a>
  	  <li class="nav-item"><a class="nav-link" href="<c:url value="/productsOuter.jsp"/>">OUTTER</a>
  	  <li class="nav-item"><a class="nav-link" href="<c:url value="/productsShoes.jsp"/>">SHOES</a>
  	  <li class="nav-item"><a class="nav-link" href="<c:url value="/addProduct.jsp"/>">상품 등록</a>
  	  <li class="nav-item"><a class="nav-link" href="<c:url value="/editProduct.jsp?edit=update"/>">상품 수정</a>
  	  <li class="nav-item"><a class="nav-link" href="<c:url value="/editProduct.jsp?edit=delete"/>">상품 삭제</a>
  	   <li class="nav-item"><a class="nav-link" href="<c:url value="/BbsListAction.go?pageNum=1"/>">리뷰게시판</a>
  	  <li class="nav-item"><a class="nav-link" href="<c:url value="/BoardListAction.do?pageNum=1"/>">Q&A</a>
  	</ul>
  </div>
</div>
</nav>