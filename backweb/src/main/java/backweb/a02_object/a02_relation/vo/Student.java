package backweb.a02_object.a02_relation.vo;

public class Student {
	private String name;
	private IDCard idCard;
	public Student() {
		super();
	}
	public Student(String name, IDCard idCard) {
		super();
		this.name = name;
		this.idCard = idCard;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public IDCard getIdCard() {
		return idCard;
	}
	public void setIdCard(IDCard idCard) {
		this.idCard = idCard;
	}
	public void showInfo() {
		System.out.println("# 학생 정보 #");
		System.out.println("이름: "+this.name);
		System.out.println("카드번호: "+this.idCard.getCardNumber());
	}
}
