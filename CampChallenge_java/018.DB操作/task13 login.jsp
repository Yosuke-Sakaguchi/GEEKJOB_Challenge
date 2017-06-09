<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    ResultSet db_data=null;
    Connection db_con=null;
    PreparedStatement db_st=null;
   try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        db_con=DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db","XTEND","mercurylampe");
        request.setCharacterEncoding("UTF-8");
        db_st=db_con.prepareStatement("select * from icuser where userID=? and password=?");
        db_st.setString(1,request.getParameter("id"));
        db_st.setString(2,request.getParameter("pass")); 
        db_data=db_st.executeQuery();
        if(db_data.next()==true){
            String disp="/task13 control.html";
            RequestDispatcher dispatch = request.getRequestDispatcher(disp);
            dispatch.forward(request, response);
        }else{
            out.print("ユーザーIDもしくはパスワードが正しくありません");
        }
    }catch(SQLException sqle){
        out.print("SQLエラーだよ："+sqle.toString());
    }catch(Exception e){
        out.print("他のエラーだよ："+e.toString());
    }
    %>