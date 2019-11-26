package kr.co.teamplete.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamplete.dto.TaskVO;
import kr.co.teamplete.dto.TeamVO;
import kr.co.teamplete.service.TaskService;

@Controller
public class TaskController {

	@Autowired
	private TaskService service;
	
	
	//태스크 등록
//	@PostMapping("/teamdetail/{id}/task")
//	public String insertTask(TaskVO task, @PathVariable("id") int teamId) {
//		service.insertTaskS(task);
//		
//		return "redirect:/teamdetail/" + teamId;
//	}
	
	//ajax 태스크 등록
	@PostMapping("/teamdetail/{id}/task")
	@ResponseBody
	public TaskVO insertTask(@RequestBody TaskVO task, @PathVariable("id") int teamId, Model model) {
		
		service.insertTaskS(task);
		
		return task;
		
	}
	
	//태스크 조회
//	@RequestMapping(value = "/teamdetail/task/{id}", method = {RequestMethod.GET})
//	@ResponseBody
//	public List<TaskVO> teamDetail(@PathVariable("id") int teamId) {
//		
//		List<TaskVO> taskList = service.selectAllTaskS(teamId);
//	
//		return taskList;
//	}
	
	//태스크 수정
//	@RequestMapping(value = "/task/update/{taskId}", method = { RequestMethod.POST, RequestMethod.GET })
//	@ResponseBody
//	public TaskVO updateTask(TaskVO task, @PathVariable("taskId") int taskId, Model model) {
//
//		service.updateTaskS(task);
//	
//		
//		return task;
//	}
	
	//태스크 삭제
	@RequestMapping(value = "/task/delete/{taskId}", method = RequestMethod.DELETE)
	public void deleteTask(@PathVariable("taskId") int taskId) {
		
		service.deleteTaskS(taskId);
	}
	
	

}
