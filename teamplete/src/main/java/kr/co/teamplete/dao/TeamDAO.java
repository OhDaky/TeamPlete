package kr.co.teamplete.dao;

import java.util.List;

import kr.co.teamplete.dto.TeamVO;

public interface TeamDAO {

	//팀 생성
	public void insert(TeamVO team);
	
	//모든 팀 조회
	public List<TeamVO> selectAll(String memberid);

}
