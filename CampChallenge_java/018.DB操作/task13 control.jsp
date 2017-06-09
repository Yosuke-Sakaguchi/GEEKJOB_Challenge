<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    Connection db_con=null;
    PreparedStatement db_st=null;
    PreparedStatement db_id=null;
    ResultSet db_data=null;
    try{
        request.setCharacterEncoding("UTF-8");
        if(request.getParameter("regist")!=null){
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            db_con=DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db","XTEND","mercurylampe");
            db_id=db_con.prepareStatement("select id from goods order by id desc limit 1;");
            db_data=db_id.executeQuery();
            db_data.next();
            db_st=db_con.prepareStatement("insert into goods(id,name,number)values(?,?,?)");
            db_st.setInt(1,db_data.getInt("id")+1);
            db_st.setString(2,request.getParameter("name"));
            db_st.setInt(3,Integer.parseInt(request.getParameter("number")));
            int i=db_st.executeUpdate();
            out.print("登録できました");
            db_st.close();
            db_con.close();
            db_data.close();
            db_id.close();
        }else if(request.getParameter("print")!=null){
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            db_con=DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db","XTEND","mercurylampe");
            db_id=db_con.prepareStatement("select * from goods");
            db_data=db_id.executeQuery();
            while(db_data.next()){
            out.print(db_data.getInt("id")+" ");
            out.print(db_data.getString("name")+" ");
            out.print(db_data.getInt("number")+"<br>");
            }
        db_con.close();
        db_data.close();
        db_id.close();
        }else if(request.getParameter("delete")!=null){
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            db_con=DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db","XTEND","mercurylampe");
            request.setCharacterEncoding("UTF-8");
            db_id=db_con.prepareStatement("delete from goods where id=?");
            int i=Integer.parseInt(request.getParameter("number2"));
            db_id.setInt(1,i);
            int s=db_id.executeUpdate();
            out.print("削除できました");
            db_con.close();
            db_id.close();  
        }
    }catch(SQLException sqle){
        out.print("SQLエラーだよ："+sqle.toString());
    }catch(Exception e){
        out.print("他のエラーだよ："+e.toString());
    }
    %>