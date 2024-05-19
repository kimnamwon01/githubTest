package backweb.vo;

public class Person {
	private String name;
	private int age;
	private String locate;
	public Person(String name, int age, String locate) {
		super();
		this.name = name;
		this.age = age;
		this.locate = locate;
	}
	public Person() {
		super();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getLocate() {
		return locate;
	}
	public void setLocate(String locate) {
		this.locate = locate;
	}
}
