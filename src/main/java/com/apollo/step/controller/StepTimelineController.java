package com.apollo.step.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
  Ŭ������ : StepTimelineController
  ��      ¥ : 2018. 6. 12.
  �ۼ��ڸ� : �� �� ��
 */
@Controller
@RequestMapping("/step")
public class StepTimelineController {

	
	@RequestMapping("/timeline.htm")
	public String getTimelineView(String pid) {
		
		return "step/timeline";
	}
	
	@RequestMapping("/getTimelineTasks.htm")
	public String getTimelineTasks(String sid) {
		
		return "jsonview";
	}
}
