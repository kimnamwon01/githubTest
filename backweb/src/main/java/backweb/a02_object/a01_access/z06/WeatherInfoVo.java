package backweb.a02_object.a01_access.z06;

public class WeatherInfoVo {
	private String city = "수원"; private int temperature = 30;
	private int humidity = 20;
	public String getCity() {
		return city;
	}
	public int getTemperature() {
		return temperature;
	}
	public int getHumidity() {
		return humidity;
	}
}
