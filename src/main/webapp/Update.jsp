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
<%
long upaccountno=Long.parseLong(request.getParameter("upcacno"));
String updateemail=request.getParameter("upccemail");
long updatemobileno=Long.parseLong(request.getParameter("upcmobno"));

int r=d.update(upaccountno, updateemail, updatemobileno);
if(r>0)
{
%>
<h1>Updated Successfully</h1>
<jsp:include page="Welcome.html"></jsp:include>
<%
}
else
{
%>
<h1>Invalid Account Number</h1>
<jsp:include page="Update.html"></jsp:include>
<%
}
%>
</body>
</html>