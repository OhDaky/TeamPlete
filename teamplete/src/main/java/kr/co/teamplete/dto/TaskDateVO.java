package kr.co.teamplete.dto;

public class TaskDateVO {
	private int task_num;
	private String content;
	private String reg_date;
	
	public TaskDateVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TaskDateVO(int task_num, String content, String reg_date) {
		super();
		this.task_num = task_num;
		this.content = content;
		this.reg_date = reg_date;
	}
	public int getTask_num() {
		return task_num;
	}
	public void setTask_num(int task_num) {
		this.task_num = task_num;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	@Override
	public String toString() {
		return "TaskDateVO [task_num=" + task_num + ", content=" + content + ", reg_date=" + reg_date + "]";
	}

}
