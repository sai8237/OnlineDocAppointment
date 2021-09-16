package online.doctor.appointment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import online.doctor.appointment.entities.Message;
import online.doctor.appointment.service.MessageService;

@RestController
@RequestMapping("/message")
public class MessageController {

	@Autowired
	private MessageService messageServ;
	
	@PostMapping("/add")
	public String addMessage(@RequestBody Message m)
	{
		return messageServ.addMessage(m);
	}
	
	@GetMapping("/{receiver}")
	public List<Message> getMessageByTo(@PathVariable String receiver)
	{
		return messageServ.getMessageByReceiver(receiver);
	}
	
}
