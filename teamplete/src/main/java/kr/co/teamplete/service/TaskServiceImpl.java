package kr.co.teamplete.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.teamplete.dao.TaskDAO;
import kr.co.teamplete.dto.TaskVO;

@Service
public class TaskServiceImpl implements TaskService{
	
	@Autowired
	private TaskDAO taskDAO;

	@Override
	public void insertTaskS(TaskVO task) {
		
		taskDAO.insertTask(task);
	}

	@Override
	public List<TaskVO> selectAllTaskS(int teamId) {
		List<TaskVO> taskList = taskDAO.selectAllTask(teamId);
		return taskList;
	}

	@Override
	public void updateTaskS(TaskVO task) {
		taskDAO.updateTask(task);
		
	}

	@Override
	public void deleteTaskS(int taskId) {
		taskDAO.deleteTask(taskId);
		
	}

	@Override
	public TaskVO selectTaskS(int taskId) {
		TaskVO task = taskDAO.selectTask(taskId);
		return task;
	}

}
