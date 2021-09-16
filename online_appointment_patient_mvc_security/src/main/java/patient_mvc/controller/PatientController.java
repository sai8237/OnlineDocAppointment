package patient_mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpMethod;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import patient_mvc.entity.PatientEntity;
import patient_mvc.model.Appointment;
import patient_mvc.model.Doctor;
import patient_mvc.model.Message;
import patient_mvc.model.Patient;

@Controller
public class PatientController {

	
	@Autowired
	private RestTemplate restTemplate;
//	static final String PATIENT_MS_URL="http://localhost:8085/";
	static final String PATIENT_MS_URL="http://RESTAPI-SERVER/";
	@Bean
	@LoadBalanced
	public RestTemplate create()
	{
		return new RestTemplate();
	}
	
	@GetMapping("/")
	public String home()
	{
		return "index";
	}
	
	@GetMapping("/signin")
	public String login()
	{
		return "login";
	}

	
	@GetMapping("/patient/processlogin")
	public String loginProcess(Model model)
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		PatientEntity patient = (PatientEntity) auth.getPrincipal();
		System.out.println(patient);
		if(patient != null)
		{
			model.addAttribute("patientName",patient.getName());
			return "welcomePatient";
			
		}else{
				return "index";
		}
	}
	
	
	
	@GetMapping("/register")
	public String about()
	{
		return "patientRegistrationForm";
	}
	
	@PostMapping("/processregister")
	public  String registerDoctor(@ModelAttribute("patient") Patient patient) {
		System.out.println(patient);
		String postForObject = restTemplate.postForObject(PATIENT_MS_URL+"patient/add",patient,String.class);
		System.out.println(postForObject);
		return "index";
	}
	
	@GetMapping("/patient/search")
	public String searchDoctor(Model model)
	{	
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		PatientEntity patient = (PatientEntity) auth.getPrincipal();
		model.addAttribute("patientName",patient.getName());
		return "welcomePatient";
	}
	
	
	@PostMapping("/patient/searchdoctor")
	public String getDoctorsByCategory(@RequestParam("specialization") String specialization,Model model){
	  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	  PatientEntity patient = (PatientEntity) auth.getPrincipal();
	  List<Doctor> doctorList=( List<Doctor>)restTemplate.getForObject(PATIENT_MS_URL+"doctor/category/"+specialization,List.class, HttpMethod.GET);
	  model.addAttribute("doctorList",doctorList);
	  model.addAttribute("patientName",patient.getName());
	  return "searchDoctors";
	}
	
	//booking the appointment
	@GetMapping("/patient/booking/{doctorName}")
	public String bookAppointment(@PathVariable("doctorName") String doctorName,Model  model)
	{ 
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		PatientEntity patient = (PatientEntity) auth.getPrincipal();
		Appointment appointment = new Appointment();
		appointment.setDateTime("21/5/2021");
		appointment.setStatus("unknown");
		appointment.setPayment("unpaid");
		appointment.setDoctorName(doctorName);
		appointment.setPatientName(patient.getName());
		
		String postForObject= restTemplate.postForObject(PATIENT_MS_URL+"appointment/add",appointment,String.class);
		System.out.println(postForObject);
		
		return "redirect:/patient/pay";
	}
	
	@GetMapping("/patient/pay")
	public String payment(Model model)
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		PatientEntity patient = (PatientEntity) auth.getPrincipal();
		List<Appointment> appoList=restTemplate.getForObject(PATIENT_MS_URL+"appointment/patient/"+patient.getName(),List.class, HttpMethod.GET);
		model.addAttribute("appoList",appoList);
		return "appointment_payment";
	}
	
	
	
	
	
	@GetMapping("/patient/payment/{bookId}")
	public String payment(@PathVariable("bookId") String bookId,Model model)
	{ 
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		PatientEntity patient = (PatientEntity) auth.getPrincipal();
		String object = restTemplate.getForObject(PATIENT_MS_URL+"appointment/payment/"+bookId,String.class, HttpMethod.GET);
		System.out.println(object);
		return "redirect:/patient/pay";
	}
	
	@GetMapping("/patient/viewall")
	public String viewAll(Model model)
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		PatientEntity patient = (PatientEntity) auth.getPrincipal();
		
		List<Appointment> appoList=restTemplate.getForObject(PATIENT_MS_URL+"appointment/patient/"+patient.getName(),List.class, HttpMethod.GET);
		model.addAttribute("appoList",appoList);
		return "viewpatientappointments";
	}
	
	@GetMapping("/patient/delete/{bookId}")
	public String delete(@PathVariable("bookId") String bookId,Model model)
	{ 
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		PatientEntity patient = (PatientEntity) auth.getPrincipal();
		String object = restTemplate.getForObject(PATIENT_MS_URL+"appointment/delete/"+bookId,String.class, HttpMethod.GET);
		System.out.println(object);
		
		return "redirect:/patient/viewall";
	}
	
	@GetMapping("/prescription")
	public String prescription(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		PatientEntity patient = (PatientEntity) auth.getPrincipal();
		List<Message> m = restTemplate.getForObject(PATIENT_MS_URL+"message/"+patient.getName(),List.class, HttpMethod.GET);
		model.addAttribute("name", patient.getName());
		model.addAttribute("messages", m);
		return "prescription";
	}
	
	@GetMapping("/feedback/{bookId}")
	public String feedback(@PathVariable("bookId") int bookId, Model m) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		PatientEntity patient = (PatientEntity) auth.getPrincipal();
		Appointment appointment = restTemplate.getForObject(PATIENT_MS_URL+"appointment/"+bookId,Appointment.class);
		if(!appointment.getPatientName().equals(patient.getName())) {
			return "unauthorized";
		}
		m.addAttribute("bookId", bookId);
		m.addAttribute("name", patient.getName());
		return "feedback";
	}
	
	@PostMapping("/send")
	public String send(@RequestParam("message") String message, @RequestParam("bookId") int bookId) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		PatientEntity patient = (PatientEntity) auth.getPrincipal();
		Appointment appointment = restTemplate.getForObject(PATIENT_MS_URL+"appointment/"+bookId,Appointment.class);
		if(!appointment.getPatientName().equals(patient.getName())) {
			return "unauthorized";
		}
		Message m = new Message();
		m.setBookId(bookId);
		m.setMsg(message); 
		m.setSender(appointment.getPatientName());
		m.setReceiver(appointment.getDoctorName());
		String s = restTemplate.postForObject(PATIENT_MS_URL+"message/add",m, String.class);
		System.out.println(s); 
		return "redirect:/patient/processlogin";
	}
	
	
}
