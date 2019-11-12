package kr.co.teamplete.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamplete.dto.TeamMemberVO;
import kr.co.teamplete.dto.TeamVO;
import kr.co.teamplete.service.TeamService;

@Controller
public class TeamController {
	
	@Autowired
	private TeamService service;
	

	// 팀 등록한 뒤 팀 조회 페이지로 돌아감
	@RequestMapping(value="/team/{loginVO.memberid}", method = RequestMethod.POST)
	public ModelAndView createTeam(TeamVO team, @PathVariable("loginVO.memberid") String memberid) {
		service.insertTeam(team);
		
		List<TeamVO> teamList = service.selectAllTeam(memberid);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("team/team");
		mav.addObject("teamList", teamList);
		
		return mav;
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
	
	// 상세 팀 조회
	@RequestMapping(value = "/teamdetail/{id}", method = {RequestMethod.GET})
	public ModelAndView teamDetail(@PathVariable("id") int teamId) {
		
		TeamVO team = service.detailTeam(teamId);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("team/teamDetail");
		mav.addObject("team", team);
	
		return mav;
	}
	

	//팀 멤버 추가한 뒤 상세 팀 조회 페이지로 돌아감
	@RequestMapping(value = "/teamdetail/{id}", method = RequestMethod.POST)
	public ModelAndView addTeamMember(TeamMemberVO teamMember, @PathVariable("id") int teamId) {
		service.insertTeamMem(teamMember);
		
		TeamVO team = service.detailTeam(teamId);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("team/teamDetail");
		mav.addObject("team", team);
	
		return mav;
	}

}
