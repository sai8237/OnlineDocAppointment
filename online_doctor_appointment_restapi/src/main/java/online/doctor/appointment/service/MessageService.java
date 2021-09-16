package online.doctor.appointment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online.doctor.appointment.dao.MessageRepository;
import online.doctor.appointment.entities.Message;

@Service
public class MessageService {
	@Autowired
	private MessageRepository messageRepo;
	
	public String addMessage(Message m) {
		messageRepo.save(m);
		return "Message from "+m.getSender()+" sent to "+m.getReceiver();
	}
	
	public List<Message> getMessageByReceiver(String receiver){
		
		return messageRepo.findByReceiver(receiver);
	}
	
}
