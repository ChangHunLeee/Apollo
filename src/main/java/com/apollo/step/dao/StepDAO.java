package com.apollo.step.dao;

import java.util.ArrayList;

import com.apollo.vo.ProjectDTO;
import com.apollo.vo.StepDTO;

public interface StepDAO {
	/*
	 날      짜 : 2018. 6. 12.
	 기      능 : 프로젝트 생성
	 작성자명 : 
	 */
	public ArrayList<StepDTO> getSteps(String pid);
<<<<<<< HEAD
	
	/**
	 * 
	 ��      ¥ : 2018. 6. 14.
	 ��      �� : StepŬ���� Session���� �����ϴ� Project�� Id�� �������ֱ� ����.
	 �ۼ��ڸ� : �� �� ��
	 */
	public int getProjectIdByStepId(int sid);
=======

>>>>>>> develop
}
