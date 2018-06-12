package com.apollo.task.dao;
import java.util.ArrayList;

import com.apollo.vo.TaskDTO;

public interface TaskDAO {

	public ArrayList<TaskDTO> getTasks(String pid);
	public ArrayList<TaskDTO> getTasksInSteps(String sid);
	/**
	 * 
	 ��      ¥ : 2018. 6. 12.
	 ��      �� : Step���̵�� Task�迭 �ѹ��� �������� 
	 �ۼ��ڸ� : �� �� ��
	 */
	public ArrayList<TaskDTO> getTasksByStepId(String sid);	
	
}
