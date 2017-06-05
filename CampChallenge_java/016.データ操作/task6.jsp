<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   HttpSession s=request.getSession();
   out.print(s.getAttribute("Date"));
%>