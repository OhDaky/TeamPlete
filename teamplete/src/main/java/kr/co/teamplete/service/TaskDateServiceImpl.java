package kr.co.teamplete.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.teamplete.dao.TaskDateDAO;
import kr.co.teamplete.dto.TaskDateVO;

@Service
public class TaskDateServiceImpl implements TaskDateService{

	@Autowired
	private TaskDateDAO taskDateDAO;
	
	@Override
	public void insertTask(TaskDateVO task) {
		taskDateDAO.insert(task);
		
	}

	@Override
	public List<TaskDateVO> selectAllTask() {
		List<TaskDateVO> taskDateList = taskDateDAO.selectAll();
		return taskDateList;
	}



}
