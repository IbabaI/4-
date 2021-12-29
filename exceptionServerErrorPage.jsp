<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>서버 오류</title>
</head>
<body>
<jsp:include page="menu.jsp" />
 <div calss="jumbotron">
  <div class="container">
    <h2 class="alert alert-danger">서버 내부 오류 발생</h2>
    <h4 class="alert alert-info">빠른시간내 조치하겠습니다.</h4>
  </div>
 </div>
 <div class="container">
   <p><%=request.getRequestURL() %> </p> <!-- 요청페이지 경로명 -->
   <p><a href="main.jsp" class="btn-btn-secondart">상품 목록 &raquo;</a>
 </div>
<jsp:include page="footer.jsp" />
</body>
</html>