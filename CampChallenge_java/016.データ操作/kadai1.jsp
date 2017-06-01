<%@ page pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    out.print("あなたの氏名は"+request.getParameter("name")+"<br>");
    out.print("あなたの性別は"+request.getParameter("seibetu")+"<br>");
    out.print("あなたの趣味は"+request.getParameter("mulText")+"<br>");
    %>