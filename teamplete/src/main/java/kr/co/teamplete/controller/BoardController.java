package kr.co.teamplete.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamplete.dto.BoardVO;
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
	@RequestMapping(value="/board/{taskId}/write", method = RequestMethod.GET)
	public ModelAndView writeBoardForm(@PathVariable("taskId") int taskId) {
		ModelAndView mav = new ModelAndView();
		
		TaskVO taskInfo = taskService.selectTaskS(taskId);

		mav.setViewName("board/boardWrite");
		mav.addObject("taskInfo", taskInfo);
		
		return mav;
	}
	
	// insert board
	@RequestMapping(value="/board/{taskId}/write", method = RequestMethod.POST)
	public String writeBoard(BoardVO board, @PathVariable("taskId") int taskId, Model model) {
		
		board.setTaskId(taskId);
		
		TaskVO task = taskService.selectTaskS(taskId);
		
		service.insertBoardS(board);
		
		return "redirect:/teamdetail/" + task.getTeamId();
	}

	
}
