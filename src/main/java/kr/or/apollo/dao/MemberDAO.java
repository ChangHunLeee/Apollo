package kr.or.apollo.dao;

import kr.or.apollo.vo.MemberDTO;

public interface MemberDAO {
	
	public int insertMember(MemberDTO memberdto);
	
	public String getlogin(String mid);

	public int midcheck(String mid);

	public int findpwd(MemberDTO memberdto);
	
	public String findpwdidcheck(String mid);
}
