package com.expedia.lodging.opextools.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.expedia.lodging.opextools.service.IncidentJiraService;

@Controller
public class IncidentJiraController {
	/*@Autowired
    IncidentJiraService incidentJiraService;*/
	
	@RequestMapping("/welcome")
    public String welcome(Map<String, Object> model){
		model.put("message", "opex tools team!");
    	return "welcome";
    }
}
