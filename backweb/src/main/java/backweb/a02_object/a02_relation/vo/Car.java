package backweb.a02_object.a02_relation.vo;

public class Car {
	private String model;
	private Engine engine;
	public Car() {
		super();
	}
	public Car(String model, Engine engine) {
		super();
		this.model = model;
		this.engine = engine;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public Engine getEngine() {
		return engine;
	}
	public void setEngine(Engine engine) {
		this.engine = engine;
	}
	public void showInfo() {
		System.out.println("# 자동차 정보 #");
		System.out.println("모델명: "+model);
		System.out.println("엔진마력: "+engine.getHorsepower());
	}
	
	
}
