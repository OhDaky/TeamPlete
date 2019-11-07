package kr.co.teamplete.dto;

import java.util.List;

public class TeamMemberVO {
	
	private int id, teamId;
	private String memberId;
	
	List<TeamMemberVO> members;

	public TeamMemberVO(int id, int teamId, String memberId, List<TeamMemberVO> members) {
		super();
		this.id = id;
		this.teamId = teamId;
		this.memberId = memberId;
		this.members = members;
	}

	public TeamMemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTeamId() {
		return teamId;
	}

	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public List<TeamMemberVO> getMembers() {
		return members;
	}

	public void setMembers(List<TeamMemberVO> members) {
		this.members = members;
	}

	@Override
	public String toString() {
		return "TeamMemberVO [id=" + id + ", teamId=" + teamId + ", memberId=" + memberId + ", members=" + members
				+ "]";
	}
	
	

}
