import java.io.*;

public class kadai8 {
    public static void main(String args[]){
        try{
            File f = new File("C:\\Users\\XTEND-495\\Documents\\NetBeansProjects\\Task\\src\\java\\profile.txt");
            FileWriter fw=new FileWriter(f);
            fw.write("名前：坂口耀介\r\n趣味：麻雀\r\n出身：東京");
            fw.close();
    }catch(Exception e){
            System.out.println("ダメぽ");
        }
    }
}
