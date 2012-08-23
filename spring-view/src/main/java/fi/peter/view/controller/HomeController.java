package fi.peter.view.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import fi.peter.service.service.HelloService;

@Controller
public class HomeController {
	
	@Autowired
	public HelloService helloService;
	
	@RequestMapping("/")
	public String helloWorld(Model model) {
		model.addAttribute("hello", helloService.findById(Long.valueOf(1)).getDescription());
		return "home";
	}
	
	@RequestMapping("/other")
	public String other() {
		return "other";
	}
	
	@RequestMapping("/projects")
	public String projects() {
		return "projects";
	}
	
	@RequestMapping("/projects-nav")
	public String projectsNav() {
		return "projects-nav";
	}
}
