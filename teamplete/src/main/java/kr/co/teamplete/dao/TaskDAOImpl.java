package kr.co.teamplete.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamplete.dto.TaskVO;
import kr.co.teamplete.dto.TeamVO;

@Repository
public class TaskDAOImpl implements TaskDAO{
	
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public void insertTask(TaskVO task) {
		session.insert("kr.co.teamplete.dao.TaskDAO.insertTask", task);
	}

	@Override
	public List<TaskVO> selectAllTask(int teamId) {
		List<TaskVO> taskList = session.selectList("kr.co.teamplete.dao.TaskDAO.selectAllTask", teamId);
		return taskList;
	}

	@Override
	public void updateTask(TaskVO task) {
		session.update("kr.co.teamplete.dao.TaskDAO.updateTask", task);
		
	}

	@Override
	public void deleteTask(int taskId) {
		session.delete("kr.co.teamplete.dao.TaskDAO.deleteTask", taskId);
		
	}

	@Override
	public TaskVO selectTask(int taskId) {
		TaskVO task = session.selectOne("kr.co.teamplete.dao.TaskDAO.selectTask", taskId);
		
		return task;
	}

}
