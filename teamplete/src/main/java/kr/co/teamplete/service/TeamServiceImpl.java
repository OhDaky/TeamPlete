package kr.co.teamplete.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.teamplete.dao.TeamDAO;
import kr.co.teamplete.dto.MemberVO;
import kr.co.teamplete.dto.TeamMemberVO;
import kr.co.teamplete.dto.TeamVO;

@Service
public class TeamServiceImpl implements TeamService{
	
	@Autowired
	private TeamDAO teamDAO;
	
	@Override
	public void insertTeam(TeamVO team) {
		
		teamDAO.insert(team);
	}

	@Override
	public List<TeamVO> selectAllTeam(String memberid) {
		List<TeamVO> teamList = teamDAO.selectAll(memberid);
		return teamList;
	}

	@Override
	public TeamVO detailTeam(int teamId) {
		TeamVO team = teamDAO.selectByTeam(teamId);
		return team;
	}

	@Override
	public void insertTeamMem(TeamMemberVO teamMember) {
		teamDAO.insertMember(teamMember);
		
	}

	@Override
	public List<MemberVO> selectAllMembers(int teamId) {
		List<MemberVO> members = teamDAO.selectAllTeamMember(teamId);
		return members;
	}
	
	@Override
	public List<MemberVO> selectAllMembers() {
		List<MemberVO> members = teamDAO.selectAllTeamMember();
		return members;
	}

	@Override
	public void updateAllMembers(TeamVO team) {
	      teamDAO.updateMembers(team);
		
	}

	@Override
	public void updateTeamInfo(TeamVO team) {
		teamDAO.updateTeam(team);
		
	}

	@Override
	public void deleteTeamById(int teamId) {
		teamDAO.deleteTeam(teamId);
		
	}
	

}
