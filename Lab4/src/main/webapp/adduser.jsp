<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error1.jsp" %>
    <%@page import="pack1.UserDao"%>  
<jsp:useBean id="u" class="pack1.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  
int i=UserDao.save(u);  
if(i>=1){  
response.sendRedirect("adduser-success.jsp");  
}else{  
response.sendRedirect("error1.jsp");  
}  
%>  
</body>
</html>