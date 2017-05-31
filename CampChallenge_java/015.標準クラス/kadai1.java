import java.util.Date;
import java.text.SimpleDateFormat;

public class kadai1 {
    public static void main(String args[]){
     try{
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date day=sdf.parse("2016/01/01 00:00:00");
        System.out.println(day.getTime());
    }catch(Exception s){
        System.out.println("error");
        }    
    }
}