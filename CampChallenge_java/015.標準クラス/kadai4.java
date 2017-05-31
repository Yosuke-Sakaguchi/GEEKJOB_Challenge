import java.util.Date;
import java.text.SimpleDateFormat;

public class kadai4 {
    public static void main(String args[]){
        try{
            SimpleDateFormat sb=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            SimpleDateFormat sa=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date before=sb.parse("2015/01/01 00:00:00");
            Date after=sa.parse("2015/12/31 23:59:59");
            System.out.println(after.getTime()-before.getTime());
        }catch(Exception e){
            System.out.println("ダメぽ");
        }
    }
}
