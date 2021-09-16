package online.doctor.appointment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import online.doctor.appointment.entities.Doctor;
import online.doctor.appointment.entities.Patient;
import online.doctor.appointment.service.PatientService;

@RestController
@RequestMapping("/patient")
public class PatientController {
	
	@Autowired
	private PatientService patientServ;
	
	@GetMapping("/home")
	public String patientHome()
	{
		return "Welcome patient home";
	}
	
	@PostMapping("/add")
	public String addpatient(@RequestBody Patient patient) {
		return patientServ.addPatient(patient);
	}
	
	@GetMapping("/{email}")
	public Patient getPatient(@PathVariable String email) {
		return patientServ.getPatient(email);
	}
	@GetMapping("/all")
	public List<Patient> getPatients(){
		return patientServ.getAllPatient();
	}
	
	@GetMapping("/delete/{email}")
	public String deletePatient(@PathVariable String email) {
		return patientServ.deletePatientByEmail(email);
	}
}
