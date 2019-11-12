package kr.co.teamplete.dto;

public class TeamVO {
	private int teamId;
	private String teamName, ownerId;
	
	public TeamVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TeamVO(int teamId, String teamName, String ownerId) {
		super();
		this.teamId = teamId;
		this.teamName = teamName;
		this.ownerId = ownerId;
	}

	public int getTeamId() {
		return teamId;
	}

	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}

	@Override
	public String toString() {
		return "TeamVO [teamId=" + teamId + ", teamName=" + teamName + ", ownerId=" + ownerId + "]";
	}
	

}
