<%@ page pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    out.print("商品種別は");
    int k=Integer.parseInt(request.getParameter("type"));
    if(k==1){
        out.print("雑貨です<br>");
    }else if(k==2){
        out.print("生鮮食品です<br>");
    }else{
     out.print("その他です<br>");
    }
    int i=Integer.parseInt(request.getParameter("total"));
    int j=Integer.parseInt(request.getParameter("count"));
    out.print("1個当たりの値段は"+i/j+"円です<br>");
    out.print("ポイントは");
    if(i<3000){
        out.print("つきません");
    }else if(i>=3000&&i<5000){
        int p=(int)(i*0.04);
        out.print(p+"ポイントです");
        }else{
            int p=(int)(i*0.05);
            out.print(p+"ポイントです");
    }
    %>