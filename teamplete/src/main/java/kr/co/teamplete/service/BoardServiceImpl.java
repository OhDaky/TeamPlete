package kr.co.teamplete.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.teamplete.dao.BoardDAO;
import kr.co.teamplete.dto.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO boardDAO;

	//insert board
	@Override
	public void insertBoardS(BoardVO board) {
		
		boardDAO.insertBoard(board);
	}

	//모든 board 조회
	@Override
	public List<BoardVO> selectAllBoardS(int taskId) {
		List<BoardVO> boardList = boardDAO.selectAllBoard(taskId);
		return boardList;
	}
	
	
}
