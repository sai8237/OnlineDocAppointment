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
import online.doctor.appointment.service.DoctorService;

@RestController
@RequestMapping("/doctor")
public class DoctorController {
	
	@Autowired
	private DoctorService doctorServ;
	
	@GetMapping("/home")
	public String doctorHome()
	{
		return "Welcome doctor home";
	}
	
	@PostMapping("/add")
	public String addDoctor(@RequestBody Doctor doctor) {
		return doctorServ.addDoctor(doctor);
	}
	
	@GetMapping("/{email}")
	public Doctor getDoctor(@PathVariable String email) {
		return doctorServ.getDoctor(email);
	}
	
	@GetMapping("/category/{cat}")
	public List<Doctor> getDoctorsByCategory(@PathVariable String cat){
		return doctorServ.getDoctorsByCategory(cat);
	}
	
	@GetMapping("/all")
	public List<Doctor> getDoctors(){
		return doctorServ.getAllDoctors();
	}
	
	@GetMapping("/delete/{email}")
	public String deleteDoctor(@PathVariable String email) {
		return doctorServ.deleteDoctorByEmail(email);
	}
	
	
	
	
}
