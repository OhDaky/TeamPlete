package kr.co.teamplete.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamplete.dto.BoardVO;
import kr.co.teamplete.dto.FileVO;

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

   @Override
   public void insertBoardFile(FileVO file) {
      session.insert("kr.co.teamplete.dao.BoardDAO.insertFile", file);
   }

   @Override
   public BoardVO selectBoard(int boardId) {
      BoardVO board = session.selectOne("kr.co.teamplete.dao.BoardDAO.selectBoardById", boardId);
      return board;
   }

   @Override
   public List<FileVO> selectAllFiles(int boardId) {
      List<FileVO> fileList = session.selectList("kr.co.teamplete.dao.BoardDAO.selectAllFiles", boardId);
      return fileList;
   }

}