package backweb.a02_object.a01_access;
import backweb.a02_object.a02_relation.vo.*;

public class CallVo {
	public static void main(String[] args) {
		Engine en01 = new Engine(125);
		Car c1 = new Car("산타페", en01);
		c1.showInfo();
		
		Student st01 = new Student("홍길동", new IDCard(179832));
		st01.showInfo();
			
		Computer cp = new Computer(new Monitor("20px"), "삼성");
		cp.showInfo();
	}
}
/*
# 1:1 관계로 설정된 클래스에서 생성되는 객체 
*/
