package testself;

public class Exam01 {
	
	public static void main(String[] args) {
		for(int i=1;i<=100;i++) {
			String numStr = i+"";
			numStr = numStr.substring(numStr.length()-1); // 마지막 글자를 찾기 위해서
			int num = Integer.parseInt(numStr); // 마지막 글자를 찾아서 다시 int로 바꿔준다.
			
			if(num!=0 && num%3==0) {
				System.out.println("짝");
			} else {
				System.out.print(i+",");
			}
			
		}
	}

}
