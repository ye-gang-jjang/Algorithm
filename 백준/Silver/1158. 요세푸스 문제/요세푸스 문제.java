import java.util.*;

public class Main {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int N = sc.nextInt();
		int K = sc.nextInt();
		
		Queue<Integer> q = new LinkedList<>();
		
		for(int i=1; i<=N; i++) {
			q.add(i);
		}
		
		StringBuilder people = new StringBuilder();
		people.append('<');
		
		while(q.size()>1) {
			for(int i=0; i<K-1; i++) {
				int value = q.poll();
				q.offer(value);
			}
			people.append(q.poll()).append(", ");
		}
		people.append(q.poll()).append('>');
		System.out.println(people);
	}

}
