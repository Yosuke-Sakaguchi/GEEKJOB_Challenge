<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    ResultSet db_data=null;
    Connection db_con=null;
    PreparedStatement db_st=null;
    
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        db_con=DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db","XTEND","mercurylampe");
        out.print("接続成功だよん<br><br>");
        db_st=db_con.prepareStatement("select * from profiles where profilesID = ?");
        db_st.setInt(1,1);
        db_data=db_st.executeQuery();
        while(db_data.next()){
            out.print(db_data.getString("profilesID")+" ");
            out.print(db_data.getString("name")+" ");
            out.print(db_data.getString("tell")+" ");
            out.print(db_data.getString("age")+" ");
            out.print(db_data.getString("birthday")+"<br>");
        }
        db_con.close();
        db_st.close();
        db_data.close();
        
    }catch(SQLException sqle){
        out.print("SQLエラーだよ："+sqle.toString());
    }catch(Exception e){
        out.print("他のエラーだよ："+e.toString());
    }
    %>