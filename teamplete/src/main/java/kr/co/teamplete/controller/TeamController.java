package kr.co.teamplete.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamplete.dto.TeamVO;
import kr.co.teamplete.service.TeamService;

@Controller
public class TeamController {
	
	@Autowired
	private TeamService service;
	
	//팀 등록
	@RequestMapping(value="/team/createteam", method = RequestMethod.GET)
	public String createTeamForm() {
		return "team/createTeam";
	}
	
	//팀 등록
	@RequestMapping(value="/team/createteam", method = RequestMethod.POST)
	public String createTeam(TeamVO team) {
		service.insertTeam(team);
		
		return "redirect:/";
	}
	
	// 팀 조회
	@RequestMapping(value = "/team/{loginVO.memberid}", method = RequestMethod.GET)
	public ModelAndView teamList(@PathVariable("loginVO.memberid") String memberid) {
		List<TeamVO> teamList = service.selectAllTeam(memberid);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("team/team");
		mav.addObject("teamList", teamList);
		
		return mav;
	}
	
//	//팀 상세조회
//	// 상세 병원게시글 조회
//	@RequestMapping(value = "/board/{no}", method = {RequestMethod.GET, RequestMethod.POST})
//	public ModelAndView teamDetail(@PathVariable("no") int no) {
//		service.increaseViewcnt(no);
//
//		HospitalBoardVO hospital = service.detailBoardByNo(no);
//
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("board/hospitaldetail");
//		mav.addObject("hospital", hospital);
//		  mav.addObject("replyVO", new ReplyHospitalVO());
//
//		return mav;
//	}
}
