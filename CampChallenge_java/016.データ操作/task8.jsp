<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>パーソナルデータ</title>
    </head>
    <body>
        <form action ="task8.java" method ="post">
            
            名前<input type ="text" name ="名前"><br><br>
            
            男性<input type ="radio" name ="性別" value ="男性">
            女性<input type ="radio" name ="性別" value ="女性"><br><br>
            
            趣味<br><textarea name ="趣味"></textarea><br>
            
            <input type ="submit" name ="登録"><br>
    </body>
</html>
