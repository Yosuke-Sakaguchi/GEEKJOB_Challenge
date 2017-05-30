import java.util.ArrayList;

abstract class Human {
     abstract public int open();
     abstract public void setCard(ArrayList<Integer> hand);
     abstract public boolean checkSum();
     ArrayList<Integer>myCards=new ArrayList<Integer>();    
}