package kr.co.teamplete.dao;

import java.util.List;

import kr.co.teamplete.dto.TaskDateVO;

public interface TaskDateDAO {

	//task 삽입
	public void insert(TaskDateVO task);
	
	//전체 task 조회
	public List<TaskDateVO> selectAll();
}
