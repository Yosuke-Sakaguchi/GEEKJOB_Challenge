import java.util.Date;
import java.text.SimpleDateFormat;

public class kadai2 {
    public static void main(String[] args){
        Date d=new Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        System.out.println(sdf.format(d));
    }
}
