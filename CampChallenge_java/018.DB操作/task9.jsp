<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    int db_data=0;
    Connection db_con=null;
    PreparedStatement db_st=null;
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        db_con=DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db","XTEND","mercurylampe");
        out.print("接続成功だよん<br><br>");
        request.setCharacterEncoding("UTF-8");
        db_st=db_con.prepareStatement("insert into profiles(profilesID,name,tell,age,birthday)values(?,?,?,?,?)");
        db_st.setString(1,request.getParameter("id"));
        db_st.setString(2,request.getParameter("name"));
        db_st.setString(3,request.getParameter("tell"));
        db_st.setString(4,request.getParameter("age"));
        db_st.setString(5,request.getParameter("bd"));
        db_data=db_st.executeUpdate();
        db_con.close();
        db_st.close();
    }catch(SQLException sqle){
        out.print("SQLエラーだよ："+sqle.toString());
    }catch(Exception e){
        out.print("他のエラーだよ："+e.toString());
    }
    %>