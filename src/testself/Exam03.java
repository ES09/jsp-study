package testself;

class Dog{
	String name;
}
class Cat{
	String name;
}

public class Exam03 {
	Dog d; // 멤버변수 - 클래스 내에 있고, 다른 영역에 없어야함 - 여기서는 static이 아니므로 인스턴스 변수 / 메모리를 생성해야 하는 것
			
	public Dog getDog() {
		if(d==null) {
			d = new Dog(); 
		}
		return d; // 메모리를 만든것
	}
	
	public static void main(String[] args) {
		Exam03 e = new Exam03(); 
		Dog d = e.getDog(); // null인 상태를 호출 
		d.name = "댕댕이"; // 메모리에 대입
		d = e.getDog(); // 그대로  
		System.out.println(d.name); 	
		
	}
	
}
