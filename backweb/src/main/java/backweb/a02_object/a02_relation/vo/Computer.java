package backweb.a02_object.a02_relation.vo;

public class Computer {
	private Monitor mt;
	private String model;
	public Monitor getMt() {
		return mt;
	}
	public void setMt(Monitor mt) {
		this.mt = mt;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public Computer(Monitor mt, String model) {
		super();
		this.mt = mt;
		this.model = model;
	}
	public Computer() {
		super();
	}
	public void showInfo() {
		System.out.println("# 컴퓨터 정보 #");
		System.out.println("모니터 해상도: "+this.mt.resolution);
		System.out.println("모델명: "+this.model);
	}
}
