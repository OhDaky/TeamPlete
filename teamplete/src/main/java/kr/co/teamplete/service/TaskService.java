package kr.co.teamplete.service;

import java.util.List;

import kr.co.teamplete.dto.TaskVO;
import kr.co.teamplete.dto.TeamVO;

public interface TaskService {
	
	//태스크 생성
	void insertTaskS(TaskVO task);
	
	//모든 태스크 조회
	List<TaskVO> selectAllTaskS(int teamId);
	
	//특정 태스크 조회
	TaskVO selectTaskS(int taskId); 
	
	//태스크 업데이트
	public void updateTaskS(TaskVO task);
	
	//태스크 삭제
	public void deleteTaskS(int taskId);

}
