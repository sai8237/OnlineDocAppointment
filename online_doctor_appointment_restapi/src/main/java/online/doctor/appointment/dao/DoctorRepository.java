package online.doctor.appointment.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import online.doctor.appointment.entities.Doctor;
@Repository
public interface DoctorRepository extends JpaRepository<Doctor, String>{

//	public Doctor findByEmail();
	
//	public List<Doctor> findByType();
	@Query("SELECT dc FROM docs dc where dc.category=?1")
	public List<Doctor> findByCategory(String Category);
}
