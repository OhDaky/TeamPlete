package kr.co.teamplete.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamplete.dto.TeamMemberVO;
import kr.co.teamplete.dto.TeamVO;

@Repository
public class TeamDAOImpl implements TeamDAO{
	
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public void insert(TeamVO team) {
		session.insert("kr.co.teamplete.dao.TeamDAO.insert", team);
	}

	@Override
	public List<TeamVO> selectAll(String memberid) {
		List<TeamVO> teamList = session.selectList("kr.co.teamplete.dao.TeamDAO.selectAll", memberid);
		return teamList;
	}

	@Override
	public TeamVO selectByTeam(int teamId) {
		TeamVO team = session.selectOne("kr.co.teamplete.dao.TeamDAO.selectTeam", teamId);
		return team;
	}

	@Override
	public void insertMember(TeamMemberVO teamMember) {
		session.insert("kr.co.teamplete.dao.TeamDAO.insertMember", teamMember);
		
	}
	
}
