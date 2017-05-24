<%@page pageEncoding="UTF-8"%>
<%
    char i='A';
    switch(i){
        case 'A':
            out.print("英語");
            break;
        case 'あ':
            out.print("日本語");
            break; 
       default:
            break;
    }
    %>
    