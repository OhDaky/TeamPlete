package kr.co.teamplete.service;

import java.util.List;

import kr.co.teamplete.dto.BoardVO;

public interface BoardService {
	
	// insert board
	public void insertBoardS(BoardVO board);
	
	//모든 board 조회
	public List<BoardVO> selectAllBoardS(int taskId);

}
