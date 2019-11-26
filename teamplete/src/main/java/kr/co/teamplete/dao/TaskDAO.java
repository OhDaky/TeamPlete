package kr.co.teamplete.dao;

import java.util.List;

import kr.co.teamplete.dto.TaskVO;
import kr.co.teamplete.dto.TeamVO;

public interface TaskDAO {
	
	//태스크 생성
	public void insertTask(TaskVO task);
	
	//모든 태스크 조회
	public List<TaskVO> selectAllTask(int teamId);
	
	//특정 태스크 조회
	public TaskVO selectTask(int taskId);
	
	//태스크 수정
	public void updateTask(TaskVO task);
	
	//태스크 삭제
	public void deleteTask(int taskId);

}
