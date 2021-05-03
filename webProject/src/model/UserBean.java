package model;

import java.io.Serializable;

public class UserBean implements Serializable{
	private static final long serialVersionUID = 1L;

	private String firstName;
	private String lastName;
	private int age;
	private Gender gender;
	private String lunch;
	private String event;

	public UserBean() {
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public String getFullName() {
		return this.lastName + " " + this.firstName;
	}

	 public boolean isMinority() {
		return this.age < 20;
	 }

	 public boolean isMale() {
		return this.gender.equals(Gender.Male);
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public String getLunch() {
		return lunch;
	}

	public void setLunch(String lunch) {
		this.lunch = lunch;
	}

	public String getEvent() {
		return event;
	}

	public void setEvent(String event) {
		this.event = event;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
