package kr.co.teamplete.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamplete.dto.MemberVO;
import kr.co.teamplete.dto.TeamMemberVO;
import kr.co.teamplete.dto.TeamVO;
import kr.co.teamplete.service.TeamService;

@Controller
public class TeamController {
	
	@Autowired
	private TeamService service;
	

	// 팀 등록한 뒤 팀 조회 페이지로 돌아감
	@RequestMapping(value="/team/{loginVO.memberid}", method = RequestMethod.POST)
	public String createTeam(TeamVO team, @PathVariable("loginVO.memberid") String memberid) {
		service.insertTeam(team);
		
		return "redirect:/team/" + memberid;
	}
	
	// 팀 조회
	@RequestMapping(value = "/team/{loginVO.memberid}", method = RequestMethod.GET)
	public ModelAndView teamList(@PathVariable("loginVO.memberid") String memberid) {

		List<String> deadline = new ArrayList<>();
		List<TeamVO> teamList = service.selectAllTeam(memberid);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("team/team");
		mav.addObject("teamList", teamList);
		for(int i=0; i<teamList.size(); i++) {
			deadline.add(deadline(teamList.get(i)));
//			System.out.println(deadline(teamList.get(i)));
		}
		mav.addObject("deadline", deadline);

		return mav;
	}
	
	// 팀 멤버 문자열 update
	public void membersUpdate(TeamVO team) {
		
		List<MemberVO> members = service.selectAllMembers(team.getTeamId());
		
		String membersStr = "";
		for(int i=0; i<members.size(); i++) {
			if(i == members.size()-1) {
				membersStr = membersStr + members.get(i).getMemberid();
			}else membersStr = membersStr + members.get(i).getMemberid() + ", ";
		}
		
//		System.out.println(membersStr);
		
		team.setMembers(membersStr);
		
		service.updateAllMembers(team);
	
	}

	// 남은 제출 기한 구하기
	public String deadline(TeamVO team) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
		Date date = new Date();
		String today = dateFormat.format(date);
		String deadline = team.getDeadline();
		if (deadline != null) {

			long calDateDays = 0;

			try {
				Date todayDate = dateFormat.parse(today);
				Date deadLineDate = dateFormat.parse(deadline);

				long calDate = deadLineDate.getTime() - todayDate.getTime();

				calDateDays = calDate / (24 * 60 * 60 * 1000) + 1;

			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			System.out.println(calDateDays);
			return Long.toString(calDateDays) + "일";

		} else
			return "마감기한 없음";
	}
	
	
	// 상세 팀 조회
	@RequestMapping(value = "/teamdetail/{id}", method = {RequestMethod.GET})
	public ModelAndView teamDetail(@PathVariable("id") int teamId) {
		
		TeamVO team = service.detailTeam(teamId);
		List<MemberVO> members = service.selectAllMembers(teamId);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("team/teamDetail");
		mav.addObject("team", team);
		mav.addObject("members", members);
	
		return mav;
	}
	

	//팀 멤버 추가한 뒤 상세 팀 조회 페이지로 돌아감
	@RequestMapping(value = "/teamdetail/{id}", method = RequestMethod.POST)
	public String addTeamMember(TeamMemberVO teamMember, @PathVariable("id") int teamId) {
		service.insertTeamMem(teamMember);
		TeamVO team = service.detailTeam(teamId);
		membersUpdate(team);
		
		return "redirect:/teamdetail/" + teamId;
	}

}
