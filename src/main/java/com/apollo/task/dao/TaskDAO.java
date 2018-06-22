package com.apollo.task.dao;

import java.util.ArrayList;

import com.apollo.vo.StarredTaskDTO;
import com.apollo.vo.TaskDTO;
import com.apollo.vo.TaskinstepDTO;

public interface TaskDAO {

	public ArrayList<TaskDTO> getTasks(String pid);
	public ArrayList<TaskDTO> getAssignedTasks(String pid);
	public ArrayList<TaskDTO> getNotAssignedTasks(String pid);
	public ArrayList<TaskDTO> getTasksInSteps(String sid);
	public ArrayList<TaskDTO> getTasksByStepId(int sid);	
	public int updateTask(TaskDTO taskdto);
	public int insertBoardTask(TaskDTO taskdto);
	public int insertBoardTaskInStep(TaskinstepDTO dto);
	public TaskDTO getTask(String tid);
	public int addStar(StarredTaskDTO dto);
	public int deleteStar(StarredTaskDTO dto);
}
