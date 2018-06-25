package com.apollo.step.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.View;

import com.apollo.step.service.StepBoardService;
import com.apollo.step.service.StepListService;
import com.apollo.vo.StepDTO;
import com.apollo.vo.StepListTaskDTO;
import com.apollo.vo.TaskDTO;
import com.apollo.vo.TstatusDTO;
@Controller
public class StepListController {
	
	@Autowired
	private StepListService service;
	@Autowired
	private StepBoardService boardservice;
	
	
	/**
	 * 
	 날      짜 : 2018. 6. 20.
	 기      능 : 리스트페이지 비동기 화면전환 
	 작성자명 : 박 민 식, 이 진 우
	 */
    @RequestMapping(value="/list.htm",method=RequestMethod.GET)
    public String list(int sid, HttpServletRequest request, ModelMap map) {
       
    	System.out.println(sid);
    	
      // 스텝 id 와 프로젝트 id 세션값 갱신
        int pid = service.getProjectIdByStepId(sid);
        request.getSession().setAttribute("sid", sid);
        request.getSession().setAttribute("pid", pid);
        ArrayList<TstatusDTO> tstatuslist = service.getListTstatusList(sid);
        StepDTO stepinfo =service.getListStepName(sid);
        ArrayList<StepListTaskDTO> tasklist = service.getListTask(sid);
        
        map.addAttribute("stepinfo", stepinfo);
        map.addAttribute("tstatuslist", tstatuslist);
        map.addAttribute("tasklist",tasklist);
        
        return "step/list";
    }
    /**
     * 
     날      짜 : 2018. 6. 25.
     기      능 : Task insert 해주는 함수 
     작성자명 : 이 진 우
     */
	@RequestMapping(value="/listtaskcreate.htm",method=RequestMethod.GET)
	public String createTask(TaskDTO taskdto, HttpServletRequest request,ModelMap map) {
		System.out.println("boardInsertTask : " + taskdto.getTname() + "/" + request.getSession().getAttribute("pid") + "/" + taskdto.getTstatusid()+"/"+request.getSession().getAttribute("sid"));
		taskdto.setPid((Integer)request.getSession().getAttribute("pid"));
		int sid = (Integer) request.getSession().getAttribute("sid");
		try {
			//task insert service
			boardservice.insertBoardTask(taskdto);
			//task 생성 후 시퀀스로 생성된 tid를 해당 step에 insert 하는 하는
			boardservice.insertBoardTaskInStep(taskdto.getTid(), sid);
			
			
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		
		return "redirect:/list.htm?sid="+sid;
	}
	
	public String showTaskList(String s1, Model model) {
		return null;
	}

	public String changeTasks(String[] s1, String s2, String s3, Model model) {
		return null;
	}

	public String deleteTasks(String[] s1, Model model) {
		return null;
	}
	
	
	
}
