import java.util.ArrayList;
import java.util.Random;

public class Dealer extends Human{
   ArrayList<Integer>cards=new ArrayList<Integer>();
        public Dealer(){
            for(int i=0;i<=3;i++){
                for(int j=1;j<=13;j++){
                    cards.add(j);
                }
            }
        }
   public ArrayList deal(){
    ArrayList a=new ArrayList();
    Random rand=new Random();
        for(int i=0;i<2;i++){
            Integer index=rand.nextInt(cards.size());
            a.add(cards.get(index));
        }
        return a;
    }
   public ArrayList hit(){
        ArrayList b=new ArrayList();
        Random rand=new Random();
        Integer index=rand.nextInt(cards.size());
        b.add(cards.get(index));
        return b;
    }
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