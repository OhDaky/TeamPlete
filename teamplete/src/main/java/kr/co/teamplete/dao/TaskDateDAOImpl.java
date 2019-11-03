package kr.co.teamplete.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamplete.dto.TaskDateVO;

@Repository
public class TaskDateDAOImpl implements TaskDateDAO{

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insert(TaskDateVO task) {
		session.insert("kr.co.teamplete.dao.TaskDateDAO.insertDate", task);
		
	}

	@Override
	public List<TaskDateVO> selectAll() {
		List<TaskDateVO> taskDateList = session.selectList("kr.co.teamplete.dao.TaskDateDAO.selectTaskAll");
		return taskDateList;
	}

}
