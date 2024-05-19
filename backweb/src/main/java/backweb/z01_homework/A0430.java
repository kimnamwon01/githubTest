package backweb.z01_homework;

import java.util.ArrayList;

public class A0430 {
// 개념 문제
// 1. public : 다른 패키지에서 사용가능, default : 같은 패키지에서 사용가능
// private : 해당 객체 안에서만 사용가능, protected : 같은 패키지, 상속된 객체에서만 사용가능
// 2. 해당 객체 안에서만 사용가능하다, 보안성을 높이기 위해 사용함.
// 3. 같은 패키지에서 사용 가능하다.(클래스를 호출하여)
// 4지선다 문제
	// 1.B 2.D 3.C
}
class SimpleCalculator{
	double value;
	SimpleCalculator(double value){
		this.value = value;
	}
	void add(double num) {
		this.value += num;
	}
	void subtract(double num) {
		this.value -= num;
	}
	void multiply(double num) {
		this.value *= num;
	}
	void divide(double num) {
		this.value /= num;
	}
}
class TemperatureConverter{
	double celsiusToFahrenheit(double celsius) {
		return celsius * 9 / 5 + 32;
	}
	double fahrenheitToCelsius(double fahrenheit) {
		return (fahrenheit-32)*5/9;
	}
}
class Employee{
	String name; double salary;
	Employee(String name, double salary){
		this.name = name;
		this.salary = salary;
	}
	void raiseSalary(double percentage) {
		this.salary *= (1 + percentage/100)*100;
	}
}
class BankAccount{
	String accountNumber; double balance;
	BankAccount(String accountNumber, double balance){
		this.accountNumber = accountNumber;
		this.balance = balance;
	}
}
class Car{
	String make; String moder; int year;
	Car(String make, String moder, int year) {
		this.make = make;
		this.moder = moder;
		this.year = year;
	}
	void setModer(String moder) {
		this.moder = moder;
	}
}
class LibraryBook{
	String title; String author; boolean isAvailable = true;

	LibraryBook(String title, String author, boolean isAvailable) {
		this.title = title;
		this.author = author;
		this.isAvailable = isAvailable;
	}

	boolean returnBook() {
		this.isAvailable = true;
		return isAvailable;
	}

	boolean borrowBook(boolean isAvailable) {
		this.isAvailable = false;
		return isAvailable;
	}
	
}
class Time{
	int hours, minutes, seconds;

	Time(int hours, int minutes, int seconds) {
		this.hours = hours;
		this.minutes = minutes;
		this.seconds = seconds;
	}

	void addHours(int hours) {
		this.hours += hours;
	}

	void addMinutes(int minutes) {
		this.minutes += minutes;
	}

	void addSeconds(int seconds) {
		this.seconds += seconds;
	}
	
}
class PizzaOrder{
	ArrayList<String> toppings = new ArrayList<>();
	double basePrice;
	PizzaOrder(double basePrice) {
		this.basePrice = basePrice;
	}
	void addTopping(String topping){
		toppings.add(topping);
	}
	double calculateTotalPrice() {
		return this.toppings.size() * 500 + this.basePrice;
	}
}
class AirplaneSeat{
	int seatNumber; boolean isOccupied;

	AirplaneSeat(int seatNumber) {
		this.seatNumber = seatNumber;
	}

	void reserveSeat() {
		this.isOccupied = false;
	}
	void cancelReservation() {
		this.isOccupied = true;
	}
	
}
class Athlete{
	String name, sport; int age;
	
	Athlete(String name, String sport, int age) {
		this.name = name;
		this.sport = sport;
		this.age = age;
	}

	public void updateAge(int age) {
		this.age = age;
	}
}