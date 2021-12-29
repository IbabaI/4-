<%@page import="java.sql.ResultSet"%> 
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Date"%>
<%@page import="dto.RecentProduct"%><%@page import="dao.ProductRepository"%><%@page import="dto.Product"%><%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<style>
body{background :url("main01.jpg") no-repeat; max-width:100%; height:auto; }
</style>
<title>main</title>
</head>
<body>
 <%@ include file="menu.jsp" %>

<br>

<!-- <div class="container" align="left">
  <img src="main01.jpg" max-width=100%; height=auto;>   -->  
<br>
</div>

<div class="row" align="center">
    <%@ include file="dbconn.jsp" %>
     <%  /* DB로 부터 상품 정보 리스트 얻기 */
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from product order by p_id";
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
        while(rs.next()){   
      %>
      <div class="col-md-4">
        <img src="./resources/images/<%=rs.getString("p_fileName")%>"  style="width:100%">
        <h3><%=rs.getString("p_name") %></h3>
        <p><%=rs.getString("p_description") %></p>
        <p><%=rs.getInt("p_unitPrice") %>원</p>
        <!-- 링크태그 이동은 get방식 이동 -->
        <p><a href="./product.jsp?id=<%=rs.getString("P_id")%>" 
            class="btn btn-success" role="button"><fmt:message key="productInfo"/> &raquo;</a>
      </div>
       <%
         }
       %>
       

   </div>
<%@ include file="footer.jsp" %>

</body>
</html>