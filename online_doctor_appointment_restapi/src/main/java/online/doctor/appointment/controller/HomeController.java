package online.doctor.appointment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import online.doctor.appointment.service.AppointmentService;
import online.doctor.appointment.service.DoctorService;
import online.doctor.appointment.service.PatientService;

@RestController
@RequestMapping("/")
public class HomeController {
	
	@GetMapping("/home")
	public String patientHome()
	{
		return "Welcome application home";
	}
}
