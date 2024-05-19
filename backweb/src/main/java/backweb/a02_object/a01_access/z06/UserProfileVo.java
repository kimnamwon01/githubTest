package backweb.a02_object.a01_access.z06;

public class UserProfileVo {
	private String name;
	private String email;
	private int age;
	public UserProfileVo(String name, String email, int age) {
		this.name = name;
		this.email = email;
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public int getAge() {
		return age;
	}
}
