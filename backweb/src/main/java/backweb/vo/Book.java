package backweb.vo;

public class Book {
	private String name;
	private String writer;
	private String comp;
	private int pay;
	public Book() {
		super();
	}
	public Book(String name, String writer, String comp, int pay) {
		super();
		this.name = name;
		this.writer = writer;
		this.comp = comp;
		this.pay = pay;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getComp() {
		return comp;
	}
	public void setComp(String comp) {
		this.comp = comp;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	
}
