package kr.co.teamplete.dto;

public class ChargeVO {
	
	private int chargeId;
	private String chargeMemberid, name;
	private char submit;
	private int taskId;

	public ChargeVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ChargeVO(int chargeId, String chargeMemberid, char submit, int taskId) {
		super();
		this.chargeId = chargeId;
		this.chargeMemberid = chargeMemberid;
		this.submit = submit;
		this.taskId = taskId;
	}
	public int getChargeId() {
		return chargeId;
	}
	public void setChargeId(int chargeId) {
		this.chargeId = chargeId;
	}
	public String getChargeMemberid() {
		return chargeMemberid;
	}
	public void setChargeMemberid(String chargeMemberid) {
		this.chargeMemberid = chargeMemberid;
	}
	public char getSubmit() {
		return submit;
	}
	public void setSubmit(char submit) {
		this.submit = submit;
	}
	public int getTaskId() {
		return taskId;
	}
	public void setTaskId(int taskId) {
		this.taskId = taskId;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "ChargeVO [chargeId=" + chargeId + ", chargeMemberid=" + chargeMemberid + ", submit=" + submit
				+ ", taskId=" + taskId + "]";
	}

	
}
