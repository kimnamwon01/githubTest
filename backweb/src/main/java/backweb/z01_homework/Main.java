package backweb.z01_homework;
public class Main {
	public static void main(String[] args) {
		Memo m1 = new Memo();
		Memo m2 = m1;
		if(m1==m2)	System.out.println("같음");//참조주소가 같은지 체크
	}
}