package online.doctor.appointment.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import online.doctor.appointment.entities.Patient;
@Repository
public interface PatientRepository extends JpaRepository<Patient, String>{
//public Patient findByEmail();
}
