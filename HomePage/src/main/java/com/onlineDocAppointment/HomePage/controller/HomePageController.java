package com.onlineDocAppointment.HomePage.controller;

import java.net.URI;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.netflix.discovery.EurekaClient;

@Controller
public class HomePageController {
	
	@Autowired
	private EurekaClient nextServer;
	
	@GetMapping("/")
	public String homePage() {
		return "homePage";
	}
	
	@GetMapping("/ADMIN-MVC")
	public String serviceInstancesOfAdminMvc() {
		System.out.println("Hello");
		String nextInstance = nextServer.getNextServerFromEureka("ADMIN-MVC", false).getHomePageUrl();
		return "redirect:" + nextInstance;
	
	}
	
	@GetMapping("/DOCTOR-MVC")
	public String serviceInstancesOfDoctorMvc() {
		System.out.println("Hello");
		String nextInstance = nextServer.getNextServerFromEureka("DOCTOR-MVC", false).getHomePageUrl();
		return "redirect:" + nextInstance;
	
	}
	
	@GetMapping("PATIENT-MVC")
	public String serviceInstancesOfPatientMvc() {
		System.out.println("Hello");
		String nextInstance = nextServer.getNextServerFromEureka("PATIENT-MVC", false).getHomePageUrl();
		return "redirect:" + nextInstance;
	
	}
	
	@GetMapping("/hello")
	public String hello() {
		return "Hii";
	
	}
	

}
