package kr.co.teamplete.service;

import java.util.List;

import kr.co.teamplete.dto.TaskDateVO;

public interface TaskDateService {

	void insertTask(TaskDateVO task);
	
	List<TaskDateVO> selectAllTask();
}
