package backweb.z01_homework;

public class Memo {
	String date = null;
	String title = null;
	String memo = null;
	public void prt() {
		
	}
	public static void main(String[] args) {
		Test test = new Test();
		System.out.println(test.aLength());
	}
		
}
class Test{
	String a = "human";
	int aLength() {
		return this.a.length();
	}
}
