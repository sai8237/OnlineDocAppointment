package online.doctor.appointment;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class OnlineDoctorAppointmentApplication {

	public static void main(String[] args) {
		SpringApplication.run(OnlineDoctorAppointmentApplication.class, args);
	}

}
