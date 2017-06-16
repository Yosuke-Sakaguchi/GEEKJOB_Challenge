<%@page import="jums.JumsHelper"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.UserDataBeans"%>
<%
    HttpSession hs = request.getSession();
     UserDataBeans udb = (UserDataBeans)hs.getAttribute("udb");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
        <%if(!udb.getName().equals("")&&!udb.getYear().equals("----")&&!udb.getMonth().equals("--")&&!udb.getDay().equals("--")
                &&udb.getType()!=0&&!udb.getTell().equals("")&&!udb.getComment().equals("")){%>
        <h1>登録確認</h1>
        名前:<%= udb.getName()%><br>
        生年月日:<%= udb.getYear()+"年"+udb.getMonth()+"月"+udb.getDay()+"日"%><br>
        種別:<%if(udb.getType()==1){out.print("エンジニア");}else if(udb.getType()==2){out.print("営業");}
        if(udb.getType()==3){out.print("その他");}%><br>
        電話番号:<%= udb.getTell()%><br>
        自己紹介:<%= udb.getComment()%><br>
        上記の内容で登録します。よろしいですか？
        <form action="insertresult" method="POST">
            <input type="hidden" name="ac" value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="yes" value="はい">
        </form>
    <% }else{ %>
        <h1>入力が不完全です</h1>
        <% if(udb.getName().equals("")){
            out.print("名前 ");
        }if(udb.getYear().equals("")||udb.getYear().equals("----")){
            out.print("生年月日:年 ");
        }if(udb.getMonth().equals("")||udb.getMonth().equals("--")){
            out.print("生年月日:月 ");
        }if(udb.getDay().equals("")||udb.getDay().equals("--")){
            out.print("生年月日:日 ");
        }if(udb.getTell().equals("")){
            out.print("電話番号 ");
        }if(udb.getComment().equals("")){
            out.print("自己紹介 ");
        }
        out.print("が入力されていません");
        }%>
        <form action="insert" method="POST">
            <input type="submit" name="no" value="登録画面に戻る">
        </form>
        <br>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>