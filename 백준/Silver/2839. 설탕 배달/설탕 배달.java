import java.util.*;

public class Main{
	public static void main(String[] args){
		int k=new Scanner(System.in).nextInt(),t=0;
		
		while(k >= 3) {
			if(k % 5 == 0) {
                k -= 5;
                t ++;
            } else {
                k -= 3;
                t ++;     
            }
		}
		System.out.print(k == 0 ? t : -1);
	}
}