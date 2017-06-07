<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    Connection db_con=null;
    PreparedStatement db_st=null;
    int db_data=0;
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        db_con=DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db","XTEND","mercurylampe");
        out.print("接続成功だよん<br>");
        db_st=db_con.prepareStatement("insert into profiles(profilesID,name,tell,age,birthday)"
                + "values(5,'高橋　清','090-9900-1234',24,'2000-12-24')");
        db_data=db_st.executeUpdate();
        db_st.close();
        db_con.close();
    }catch(SQLException sqle){
        out.print("SQLエラーだよ："+sqle.toString());
    }catch(Exception e){
        out.print("他のエラーだよ："+e.toString());
    }
    %>
