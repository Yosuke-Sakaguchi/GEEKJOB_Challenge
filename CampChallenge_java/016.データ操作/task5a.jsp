<%@page import="java.net.URLDecoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Cookie[] c= request.getCookies();
    if(c!=null){
         for(int i=0;i<c.length;i++){
             if(c[i].getName().equals("Date")){
                 String dd=URLDecoder.decode(c[i].getValue(),"UTF-8");
                 out.print(dd);
                 break;
                 
             }
         }
     }else{
        out.print("内容がないよう");
    }
%>
