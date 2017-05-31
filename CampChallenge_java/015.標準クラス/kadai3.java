import java.util.Date;
import java.text.SimpleDateFormat;

public class kadai3 {
    public static void main(String args[]){
        try{
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date day=sdf.parse("2016/11/04 10:00:00");
            Date day2=new Date(day.getTime());
            SimpleDateFormat sdf2=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            sdf2.format(day2);
            System.out.println(day2);
        }catch(Exception w){
            System.out.println("error");
        }
    }
}
