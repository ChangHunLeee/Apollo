package com.apollo.step.dao;

import java.util.List;

import com.apollo.task.dao.TaskDAO;

/**
 * 
  Ŭ������ : StepDAO
  ��      ¥ : 2018. 6. 12.
  �ۼ��ڸ� : �� �� ��
 */
public interface StepDAO {
	
	public List<TaskDAO> getTimeLineTasks(String stepid);

}
