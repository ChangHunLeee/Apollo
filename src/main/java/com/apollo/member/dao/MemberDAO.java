package com.apollo.member.dao;
import java.util.ArrayList;
import com.apollo.vo.MemberDTO;
import com.apollo.vo.MidpidDTO;

public interface MemberDAO {
	public ArrayList<MemberDTO> getProjectMemberlist(String pid);
	
	public ArrayList<MemberDTO> getMemberlist(String pid);
	
	public int insertMember(MemberDTO memberdto);
	
	public String getLogin(String mid);

	public int midCheck(String mid);

	public ArrayList<MemberDTO> getInviteMemberList(MidpidDTO midpiddto);
	
	public int insertPmember(MidpidDTO midpiddto);

	public int findPwd(MemberDTO memberdto);
	
	public String findPwdIdCheck(String mid);
	
	public ArrayList<MemberDTO> getTaskAssignees(String tid);
	/*
	 날      짜 : 2018. 6. 18.
	 기      능 : Step 생성시 프로젝트 참여자 명단 불러오기 
	 작성자명 : 김 래 영
	 */
	public ArrayList<MemberDTO> getProjectMemberlist2(int pid);
	/*
	 날      짜 : 2018. 6. 20.
	 기      능 : 프로필 사진 클릭시 프로필모달에 들어갈 멤버정보 불러오기
	 작성자명 : 김 래 영
	 */
	public MemberDTO getProfileInfoMember(String mid);
	
}
