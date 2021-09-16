package online.doctor.appointment.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import online.doctor.appointment.dao.PatientRepository;
import online.doctor.appointment.entities.Patient;

@Service
public class PatientService {
	
	@Autowired
	private PatientRepository patientRep;
	
	public String addPatient(Patient patient){
		patientRep.save(patient);
		return patient.getName() + " account created";
	}
	
	public Patient getPatient(String email) {
		return patientRep.findById(email).get();
	}
	public List<Patient> getAllPatient()
	{
		return patientRep.findAll();
	}
	public String deletePatientByEmail(String email)
	{
		patientRep.deleteById(email);
		return "Successfully deleted patient account with email id :"+email;
	}
	
}
