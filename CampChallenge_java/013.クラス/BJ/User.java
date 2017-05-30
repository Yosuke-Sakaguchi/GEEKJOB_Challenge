
import java.util.ArrayList;

public class User extends Human{
       public void setCard(ArrayList<Integer> hand){
       for(int i=0;i<hand.size();i++){
           myCards.add(hand.get(i));
       }
   }
   public boolean checkSum(){
       int c=0;
       for(int i=0;i<myCards.size();i++){
           c+=myCards.get(i);
       }
       if(c>=17){
           return true;
       }
       else{
           return false;
       }
   }
   public int open(){
       int c=0;
       for(int i=0;i<myCards.size();i++){
           c+=myCards.get(i);
       }
       return c;
   }
}
