package kr.co.teamplete.dao;

import java.util.List;

import kr.co.teamplete.dto.BoardVO;

public interface BoardDAO {

	// board insert
	public void insertBoard(BoardVO board);
	
	// 모든 board 조회
	public List<BoardVO> selectAllBoard(int taskId); 
}
