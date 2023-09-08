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
String customername=request.getParameter("cname");
String accounttype=request.getParameter("actype");
long balance=Long.parseLong(request.getParameter("acbalance"));
long mobileno=Long.parseLong(request.getParameter("mobno"));
String dob=request.getParameter("dob");
String email=request.getParameter("cemail");
int result=d.insert(customername, accounttype, balance, mobileno, dob, email);
if(result>0)
{
	
%>
<h1>Inserted Successfully</h1> 
<jsp:include page="Insert.html"></jsp:include>
<%
}
else
{

%>
<h1>Failed</h1>
<jsp:include page="Insert.html"></jsp:include>
<%
}
%>
</body>
</html>