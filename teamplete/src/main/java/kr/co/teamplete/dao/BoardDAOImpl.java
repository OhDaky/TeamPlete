package kr.co.teamplete.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamplete.dto.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO{
	
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public void insertBoard(BoardVO board) {
		session.insert("kr.co.teamplete.dao.BoardDAO.insertBoard", board);
		
	}

	@Override
	public List<BoardVO> selectAllBoard(int taskId) {
		List<BoardVO> boardList = session.selectList("kr.co.teamplete.dao.BoardDAO.selectAllBoard", taskId);
		return boardList;
	}

}
