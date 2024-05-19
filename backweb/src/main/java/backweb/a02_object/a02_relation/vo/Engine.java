package backweb.a02_object.a02_relation.vo;

public class Engine {
	private int horsepower;

	public Engine(int horsepower) {
		super();
		this.horsepower = horsepower;
	}

	public Engine() {
		super();
	}

	public int getHorsepower() {
		return horsepower;
	}

	public void setHorsepower(int horsepower) {
		this.horsepower = horsepower;
	}
}
