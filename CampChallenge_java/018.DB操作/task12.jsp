<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    ResultSet db_data=null;
    Connection db_con=null;
    PreparedStatement db_st=null;
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        db_con=DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db","XTEND","mercurylampe");
        out.print("接続成功だよん<br><br>");
        request.setCharacterEncoding("UTF-8");
        db_st=db_con.prepareStatement("select * from profiles where name like ? and age like ?  and birthday like ?");
        db_st.setString(1,request.getParameter("name")+"%");
        db_st.setString(2,request.getParameter("age")+"%");
        db_st.setString(3,request.getParameter("bd")+"%");
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