<%@page import="jums.UserDataBeans"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%
    HttpSession hs = request.getSession();
    UserDataBeans udb = (UserDataBeans)hs.getAttribute("udb");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録画面</title>
    </head>
    <body>
        <%
            if(udb == null){
            udb = new UserDataBeans();
            }if(udb.getName()==null){
                udb.setName("");
            }if(udb.getYear()==null){
                udb.setYear("----");
            }if(udb.getMonth()==null){
                udb.setMonth("--");
            }if(udb.getDay()==null){
                udb.setDay("--");
            }if(udb.getTell()==null){
                udb.setTell("");
            }if(udb.getComment()==null){
                udb.setComment("");
            }if(udb.getType()==0){
                 udb.setType(1);
            }
            %>
    <form action="insertconfirm" method="POST">
        名前:
        <input type="text" name="name" value=<%=udb.getName()%>>
        <br><br>
        生年月日:　
        <select name="year">
            <option><%=udb.getYear()%></option>
            <%
            for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>"> <%=i%> </option>
            <% } %>
        </select>年
        <select name="month">
            <option><%=udb.getMonth()%></option>
            <%
            for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option><%=udb.getDay()%></option>
            <%
            for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>日
        <br><br>

        種別:
        <br>
        <%if(udb.getType()==1){
            out.print("<input type=\"radio\" name=\"type\" value=1 checked>エンジニア<br>");
        }else{
            out.print("<input type=\"radio\" name=\"type\" value=1>エンジニア<br>");
        }if(udb.getType()==2){
            out.print("<input type=\"radio\" name=\"type\" value=2 checked>営業<br>");
        }else{
            out.print("<input type=\"radio\" name=\"type\" value=2>営業<br>");
        }if(udb.getType()==3){
            out.print("<input type=\"radio\" name=\"type\" value=3 checked>その他<br>");
        }else{
            out.print("<input type=\"radio\" name=\"type\" value=3>その他<br>");
        }
        %>
        

        電話番号:
        <input type="text" name="tell" value=<%=udb.getTell()%>>
        <br><br>

        自己紹介文
        <br>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%=udb.getComment()%></textarea><br><br>
        
        <input type="hidden" name="ac" value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <br>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>