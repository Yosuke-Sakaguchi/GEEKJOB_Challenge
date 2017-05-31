import java.io.*;

public class kadai9 {
    public static void main(String args[]){
        try{
            File f=new File("C:\\Users\\XTEND-495\\Documents\\NetBeansProjects\\Task\\src\\java\\profile.txt");
            FileReader fr=new FileReader(f);
            BufferedReader br=new BufferedReader(fr);
            String line=br.readLine();
                while(line!=null){
                    System.out.println(line);
                    line=br.readLine();
                }
            }catch(Exception e){
               System.out.println("もうダメぽ");
        }
    }
}
