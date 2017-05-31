import java.util.Timer;
import java.io.*;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public class kadai10 {
	public static void main(String[] args) {
            try{
                File f=new File("C:\\Users\\XTEND-495\\Documents\\NetBeansProjects\\Task\\src\\java\\log.txt");
                FileWriter fw=new FileWriter(f);
                fw.write("java.util.Timerで周期起動タスクを行うプログラムのログです\r\n");
                fw.write("10秒動作したら自動で終了します\r\n");
                Date bd=new Date();
                fw.write(bd+" タイマーが開始します\r\n");
		Timer timer = new Timer();
		timer.schedule(new printtask(),0,1000);
                TimeUnit.SECONDS.sleep(10);
                timer.cancel();
                Date ad=new Date();
                fw.write(ad+" これで終了です");
                fw.close();
            }catch(Exception e){
                System.out.println("ダメぽ");
            }
    }
}