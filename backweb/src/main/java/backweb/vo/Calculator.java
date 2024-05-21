package backweb.vo;

public class Calculator {
	private double num01; 
	private double num02;

	public Calculator(double num01, double num02) {
		super();
		this.num01 = num01;
		this.num02 = num02;
	}
	public double plus() {
		return this.num01 + this.num02;
	}
	public double minus() {
		return this.num01 - this.num02;
	}
	public double multi() {
		return this.num01 * this.num02;
	}
	public double division() {
		return this.num01 / this.num02;
	}
	public double getNum01() {
		return num01;
	}
	public void setNum01(double num01) {
		this.num01 = num01;
	}
	public double getNum02() {
		return num02;
	}
	public void setNum02(double num02) {
		this.num02 = num02;
	}
}
