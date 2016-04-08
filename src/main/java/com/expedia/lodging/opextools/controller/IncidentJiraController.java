package com.expedia.lodging.opextools.controller;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.expedia.lodging.opextools.configuration.IncidentJiraSettings;
import com.expedia.lodging.opextools.configuration.OpexToolsSettings;
import com.expedia.lodging.opextools.service.IncidentJiraService;
import com.expedia.lodging.opextools.service.impl.IncidentJiraServiceImpl;
import com.expedia.lodging.opextools.valueobject.IncidentJiraIssue;
import com.expedia.lodging.opextools.valueobject.IncidentJiraProjectType;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class IncidentJiraController {
	@Autowired
    IncidentJiraService incidentJiraService;
	
	@Autowired
	OpexToolsSettings opexToolsSettings;
	
	@Autowired
	IncidentJiraSettings incidentJiraSettings;
	
	private static final Logger logger = LoggerFactory
			.getLogger(IncidentJiraController.class);
	
	@PostConstruct
	public void logSomething() {
		logger.debug("Sample Debug Message");
		logger.trace("Sample Trace Message");
		logger.info("Sample Info Message");
		logger.error("Sample Error Message");
		String jiraAccountName = opexToolsSettings.getJiraAccountName();
		logger.error(jiraAccountName);
		
		String epcJiraProjectKey = incidentJiraSettings.getJiraProjectKey(IncidentJiraProjectType.TheLodgingService);
		logger.error(epcJiraProjectKey);
	}
	
	@RequestMapping("/welcome")
    public String welcome(Map<String, Object> model){
//		model.put("message", "opex tools team!");
		/*IncidentJiraServiceImpl impl = new IncidentJiraServiceImpl();*/
		List<IncidentJiraIssue> list=incidentJiraService.retrieveAllIncidentJiraList();
		model.put("list", list);
    	return "welcome";
    }
	
	@RequestMapping("/incident-jira")
    public String list(Map<String, Object> model){
		model.put("message", "opex tools team!");
    	return "incident-jira-list";
    } 
}
