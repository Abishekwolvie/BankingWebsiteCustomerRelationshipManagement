<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="d" class="db.DbCode"></jsp:useBean>
<%@ page errorPage="Error.jsp" %>
<%
long deleteaccountnumber=Long.parseLong(request.getParameter("delacno"));
int del=d.delete(deleteaccountnumber);

if(del>0)
{
%>
<h1>Successfully deleted the account</h1>
<jsp:include page="Delete.html"></jsp:include>
<%
}
else
{
%>
<h1>Invalid Account Number</h1>
<jsp:include page="Delete.html"></jsp:include>
<%
}
%>
</body>
</html>