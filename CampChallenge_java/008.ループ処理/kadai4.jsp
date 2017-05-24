<%@page pageEncoding="UTF-8"%>
<%
    int i=1000;
    int j=2;
    int k=0;
    while(i>=100){
        i=i/j;
        k++;
    }
    out.print(k+"回ループした");
    %>