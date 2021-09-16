package online.doctor.appointment.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "pats")
@Table(name = "patient")
public class Patient {

	@Id
	private String email;
	@Column
	private String name;
	@Column
	private String password;
	@Column
	private int age;
	
	@Column
	private String gender;
	@Column
	private int mobile;

	public Patient() {
	}
	
	public Patient(String email, String name, String password, int age, String gender, int mobile) {
		super();
		this.email = email;
		this.name = name;
		this.password = password;
		this.age = age;
		this.gender = gender;
		this.mobile = mobile;
	}



	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getMobile() {
		return mobile;
	}

	public void setMobile(int mobile) {
		this.mobile = mobile;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}
