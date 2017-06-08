<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    Connection db_con=null;
    PreparedStatement db_st=null;
    int p=0;
    
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        db_con=DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db","XTEND","mercurylampe");
        out.print("接続成功だよん<br><br>");
        db_st=db_con.prepareStatement("delete from profiles where profilesID=5");
        p=db_st.executeUpdate();
        db_st=db_con.prepareStatement("update profiles set name='松岡　修造',age=48,birthday='1967-11-06' where profilesID=1;");
        p=db_st.executeUpdate();
        db_con.close();
        db_st.close();
        
    }catch(SQLException sqle){
        out.print("SQLエラーだよ："+sqle.toString());
    }catch(Exception e){
        out.print("他のエラーだよ："+e.toString());
    }
    %>