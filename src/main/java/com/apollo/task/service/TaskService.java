package com.apollo.task.service;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.apollo.step.dao.StepDAO;
import com.apollo.task.dao.StarredTaskDAO;
import com.apollo.task.dao.TaskDAO;
import com.apollo.task.dao.TstatusDAO;
import com.apollo.vo.CommentDTO;
import com.apollo.vo.StarredTaskDTO;
import com.apollo.task.dao.CommentDAO;
import com.apollo.vo.StepDTO;
import com.apollo.vo.TaskDTO;
import com.apollo.vo.TaskInStepDTO;
import com.apollo.vo.TidvalueDTO;
import com.apollo.vo.TstatusDTO;

@Service
public class TaskService {


	@Autowired	
	private SqlSession session;
	
	
	/**
	 * 
	 날      짜 : 2018. 6. 15.
	 기      능 : 테스크 정보 변경
	 작성자명 : 박 민 식
	 */
	public int updateTask(TaskDTO taskdto) {
		int result = 0;
		
		try {
			TaskDAO dao = session.getMapper(TaskDAO.class);
			result = dao.updateTask(taskdto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	
	/**
	 * 
	 날      짜 : 2018. 6. 19.
	 기      능 : tid로 task 가져오기
	 작성자명 : 김 정 권
	 */
	public TaskDTO getTask(int tid) {
		
		TaskDTO taskdto = new TaskDTO();
		TaskDAO taskdao = session.getMapper(TaskDAO.class);
		taskdto = taskdao.getTask(tid);
		
		return taskdto;
	}
	
	/**
	 * 
	 날      짜 : 2018. 6. 19.
	 기      능 : tid로 해당 task가 속한 step들 가져오기
	 작성자명 : 김 정 권
	 */
	public ArrayList<StepDTO> getStepid(int tid) {
		
		ArrayList<StepDTO> steplist = new ArrayList();
		StepDAO stepdao = session.getMapper(StepDAO.class);
		steplist = stepdao.getStepsid(tid);
		
		return steplist;
	}
	
	
	/**
	 * 
	 날      짜 : 2018. 6. 19.
	 기      능 : pid로 tstatus 가져오기
	 작성자명 : 김 정 권
	 */
	public ArrayList<TstatusDTO> gettstatuslist(int pid) {
		
		ArrayList<TstatusDTO> tstatuslist = new ArrayList();
		TstatusDAO tstatusdao = session.getMapper(TstatusDAO.class);
		tstatuslist = tstatusdao.getTstatuslist(pid);
		return tstatuslist;
	}
	/**
	 * 
	 날      짜 : 2018. 6. 20.
	 기      능 : mid를 이용해서 즐겨찾기 한 tid들을 가져온다
	 작성자명 : 김 정 권
	 */
	public ArrayList<StarredTaskDTO> getStarredTaskList(String mid){

		ArrayList<StarredTaskDTO> starredtasklist = new ArrayList();
		StarredTaskDAO dao = session.getMapper(StarredTaskDAO.class);
		starredtasklist = dao.getStarredTaskList(mid);
		return starredtasklist;
	}
	
	/**
	 * 
	 날      짜 : 2018. 6. 20.
	 기      능 : 즐겨찾기 추가
	 작성자명 : 김 정 권
	 */
	public int addstar(StarredTaskDTO dto) {
		
		System.out.println("addstar 탔음");
		TaskDAO taskdao = session.getMapper(TaskDAO.class);
		int result = taskdao.addStar(dto);
		return result;
	}
	
	
	/**
	 * 
	 날      짜 : 2018. 6. 20.
	 기      능 : 즐겨찾기 삭제
	 작성자명 : 김 정 권
	 */
	public int deletestar(StarredTaskDTO dto) {
		
		System.out.println("deletestar 탔음");

		TaskDAO taskdao = session.getMapper(TaskDAO.class);
		int result = taskdao.deleteStar(dto);
		return result;
	}
	
	
	/**
	 * 
	 날      짜 : 2018. 6. 20.
	 기      능 : task 삭제
	 작성자명 : 김 정 권
	 */
	public int deleteTask(int tid) {
		
		System.out.println("delete tid 서비스 탔음");
		TaskDAO taskdao = session.getMapper(TaskDAO.class);
		int result = taskdao.deleteTask(tid);
		return result;
	}
	
	
	
	/**
	 * 
	 날      짜 : 2018. 6. 21.
	 기      능 : task가 속한 스텝 삭제
	 작성자명 : 김 정 권
	 */
	public int deleteStepInTaskModal(TaskInStepDTO dto) {
		
		System.out.println("deleteStepInTaskModal 서비스 탔음");
		TaskDAO taskdao = session.getMapper(TaskDAO.class);
		int result = taskdao.deleteStepInTaskModal(dto);
		return result;
	}
	
	
	
	/**
	 * 
	 날      짜 : 2018. 6. 21.
	 기      능 : 해당 task가 몇 개의 step에 속해 있는지 확인
	 작성자명 : 김 정 권
	 */
	public int countTaskInStep(int tid) {
		
		System.out.println("countTaskInStep 서비스 탔음");
		TaskDAO taskdao = session.getMapper(TaskDAO.class);
		int result = taskdao.countTaskInStep(tid);
		return result;
	}
	
	
	
	/**
	 * 
	 날      짜 : 2018. 6. 22.
	 기      능 : 해당 task가 몇 개의 step에 속해 있는지 확인
	 작성자명 : 김 정 권
	 */
	public int changeTstatus(TidvalueDTO dto) {
		
		TaskDAO taskdao = session.getMapper(TaskDAO.class);
		int result = taskdao.changeTstatus(dto);
		return result;
	}
	
	
	/**
	 * 
	 날      짜 : 2018. 6. 22.
	 기      능 : 코멘트 입력
	 작성자명 : 김 정 권
	 */
	public int insertComment(CommentDTO commentdto) {
		System.out.println("insertComment 서비스 메소드 실행");
		TaskDAO taskdao = session.getMapper(TaskDAO.class);
		int result = taskdao.insertComment(commentdto);
		return result;
		
	}
	
	
	/**
	 * 
	 날      짜 : 2018. 6. 22.
	 기      능 : Task 상태 변경자 이름 가져오기
	 작성자명 : 김 정 권
	 */
	public String getTaskModifierName(String mid) {
		
		TaskDAO taskdao = session.getMapper(TaskDAO.class);
		String name = taskdao.getTaskModifierName(mid);
		return name;
	}

	public int insertInboxComment(CommentDTO commentdto){
		System.out.println("!!인서트 코멘트 서비스!!");
		CommentDAO commentdao = session.getMapper(CommentDAO.class);
		Map map = new HashMap();
		
		 int insertcmt =commentdao.insertComment(commentdto);
		 System.out.println("!!코멘트 테이블에 인서트 성공?!!"+ insertcmt);
		 int pid = commentdto.getTid();
	
		 
		 List<String> midlist = commentdao.selectCommentMidlist(pid);
		 System.out.println("!!코멘트 태스크아이디에 할당된 멤버 아이디 select 성공??!!");
		 
		 
		 map.put("cmtid", commentdto.getCmtid());
		 int result = 0;
		 boolean exist = false;
		 for(int i =0 ;i<midlist.size();i++) {
			 if(midlist.get(i).equals(commentdto.getMid())){
				 exist = true;
			 }
			 map.put("mid", midlist.get(i));
			 result = commentdao.insertReceiver(map);
			 System.out.println("!!리시버 테이블에 인서트중!!");
		 }
		 
		 if(exist == false) {
			 map.put("mid", commentdto.getMid());
			 result = commentdao.insertReceiver(map);
			 System.out.println("!!그 테스크에 할당된 사람이 아니어도 보낸 사람이면 넣어줌!!");
		 }
		 System.out.println("!!리시버 테이블에 인서트 성공??!!");
		 return result;
	}
	
	

	/**
	 * 
	 날      짜 : 2018. 6. 22.
	 기      능 : tid로 스텝들 가져오기
	 작성자명 : 김 정 권
	 */
	public ArrayList<StepDTO> getStepListByTid(int tid) {

		TaskDAO taskdao = session.getMapper(TaskDAO.class);
		ArrayList<StepDTO> steplist = new ArrayList();
		steplist = taskdao.getStepListByTid(tid);
		
		return steplist;
	}
	
		
	/**
	 * 
	 날      짜 : 2018. 6. 23.
	 기      능 : 테스크 모달 창에서 스텝 추가 버튼을 누르면 실행
	 작성자명 : 김 정 권
	 */
	public int addTaskInStepInTaskModal(TaskInStepDTO taskinstepdto) {
		
		System.out.println("테스크 모달 내 스텝 추가 서비스 메소드 실행");
		TaskDAO taskdao = session.getMapper(TaskDAO.class);
		int result = taskdao.addTaskInStepInTaskModal(taskinstepdto);
		
		System.out.println("스텝 추가 결과 : " + result);
		
		return result;
	}
	
	
	
	/**
	 * 
	 날      짜 : 2018. 6. 23.
	 기      능 : tid를 통해 step들의 이름을 가져온다
	 작성자명 : 김 정 권
	 */
	public ArrayList<StepDTO> getStepNamesbytid(int tid) {
		
		ArrayList<StepDTO> list = new ArrayList();
		TaskDAO taskdao = session.getMapper(TaskDAO.class);
		list = taskdao.getStepNamesbytid(tid);
		
		return list;
	}
	
	
}



