package online.doctor.appointment.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import online.doctor.appointment.entities.Message;

@Repository
public interface MessageRepository extends JpaRepository<Message,Integer>{
	
	@Query("SELECT msgs FROM messages msgs where msgs.receiver=?1")
	public List<Message> findByReceiver(String receiver);
	
}
