package com.apollo.step.dao;

import java.util.ArrayList;

import com.apollo.vo.StepDTO;

public interface StepDAO {
	
	public ArrayList<StepDTO> getSteps(String pid);
	
	/**
	 * 
	 ��      ¥ : 2018. 6. 14.
	 ��      �� : StepŬ���� Session���� �����ϴ� Project�� Id�� �������ֱ� ����.
	 �ۼ��ڸ� : �� �� ��
	 */
	public int getProjectIdByStepId(int sid);
}
