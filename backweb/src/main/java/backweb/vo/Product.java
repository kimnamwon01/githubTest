package backweb.vo;

public class Product {
	private String pname;
	private int pprice;
	private int pcnt;
	public Product() {
		super();
	}
	public Product(String pname, int pprice, int pcnt) {
		super();
		this.pname = pname;
		this.pprice = pprice;
		this.pcnt = pcnt;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public int getPcnt() {
		return pcnt;
	}
	public void setPcnt(int pcnt) {
		this.pcnt = pcnt;
	}
}
