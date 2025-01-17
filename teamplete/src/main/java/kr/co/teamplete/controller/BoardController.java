package kr.co.teamplete.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamplete.dto.BoardVO;
import kr.co.teamplete.dto.ChargeVO;
import kr.co.teamplete.dto.FileVO;
import kr.co.teamplete.dto.TaskVO;
import kr.co.teamplete.service.BoardService;
import kr.co.teamplete.service.TaskService;

@Controller
public class BoardController {

	@Autowired
	private BoardService service;

	@Autowired
	private TaskService taskService;

	// insert board
	@RequestMapping(value = "/{taskId}/board/write", method = RequestMethod.GET)
	public ModelAndView writeBoardForm(@PathVariable("taskId") int taskId) {
		ModelAndView mav = new ModelAndView();

		TaskVO taskInfo = taskService.selectTaskS(taskId);

		mav.setViewName("board/boardWrite");
		mav.addObject("taskInfo", taskInfo);

		return mav;
	}

	// insert board
	@RequestMapping(value = "/{taskId}/board/write", method = RequestMethod.POST)
	public String writeBoard(BoardVO board, @PathVariable("taskId") int taskId, Model model) {

		board.setTaskId(taskId);
		
//		List<ChargeVO> chargeList = taskService.selectNsubmitS(taskId);
//
//
//		for (int i = 0; i < chargeList.size(); i++) {
//			System.out.println(i + "번째: " + chargeList.get(i).toString());
//			System.out.println("============================================");
//			System.out.println("charge id: " + chargeList.get(i).getChargeMemberid());
//			System.out.println("submit: " + chargeList.get(i).getSubmit());
//			System.out.println("board id: " + board.getWriterId());
//			if (chargeList.get(i).getChargeMemberid().equals(board.getWriterId())) {
//				System.out.println("============================================");
//				System.out.println("id: " + chargeList.get(i).getChargeMemberid());
//				System.out.println("submit1: " + chargeList.get(i).getSubmit());
//				chargeList.get(i).setSubmit('Y');
//				taskService.updateSubmitS(chargeList.get(i));
//				System.out.println("submit2: " + chargeList.get(i).getSubmit());
//				System.out.println(chargeList.get(i).toString());
//				break;
//			}
//		}

		service.insertBoardS(board);

		return "redirect:/taskdetail/" + taskId;
	}

	// 특정 board 상세 조회
	@RequestMapping(value = "/board/{boardId}", method = RequestMethod.GET)
	public ModelAndView boardDetail(@PathVariable("boardId") int boardId) {

		BoardVO board = service.selectBoardById(boardId);

		// board의 모든 파일 리스트
		List<FileVO> fileList = service.selectAllFileS(boardId);

		ModelAndView mav = new ModelAndView();

		mav.setViewName("board/boardDetail");

		mav.addObject("boardDetail", board);
		mav.addObject("fileList", fileList);

		return mav;
	}

}