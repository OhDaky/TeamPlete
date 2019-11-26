package kr.co.teamplete.dto;

public class TaskVO {
	private int taskId;
	private String writerId;
	private String writerName;
	private int teamId;
	private String content;
	
	public TaskVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TaskVO(int taskId, String writerId, String writerName, int teamId, String content) {
		super();
		this.taskId = taskId;
		this.writerId = writerId;
		this.writerName = writerName;
		this.teamId = teamId;
		this.content = content;
	}

	public int getTaskId() {
		return taskId;
	}

	public void setTaskId(int taskId) {
		this.taskId = taskId;
	}

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}

	public String getWriterName() {
		return writerName;
	}

	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}

	public int getTeamId() {
		return teamId;
	}

	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "TaskVO [taskId=" + taskId + ", writerId=" + writerId + ", writerName=" + writerName + ", teamId="
				+ teamId + ", content=" + content + "]";
	}
	
}
