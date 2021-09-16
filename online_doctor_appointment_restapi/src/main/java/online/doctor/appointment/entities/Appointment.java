package online.doctor.appointment.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import net.bytebuddy.dynamic.loading.ClassReloadingStrategy.Strategy;

@Entity(name="bookings")
@Table(name="appointment")
public class Appointment {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private int  bookId;
	@Column
	private String doctorName;
	@Column
	private String patientName;
	@Column
	 private String payment;
	@Column
	(columnDefinition = "varchar(255) default 'unknown'")
	private String status;
	@Column
	private String dateTime;
	
	public Appointment(int bookId, String doctorName, String patientName, String payment, String status,
			String dateTime) {
		super();
		this.bookId = bookId;
		this.doctorName = doctorName;
		this.patientName = patientName;
		this.payment = payment;
		this.status = status;
		this.dateTime = dateTime;
	}
	
	public String getPayment() {
		return payment;
	}


	public void setPayment(String payment) {
		this.payment = payment;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}




	public Appointment() {}
	
	
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	public String getPatientName() {
		return patientName;
	}
	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}
	
	public String getDateTime() {
		return dateTime;
	}
	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	
	
}
