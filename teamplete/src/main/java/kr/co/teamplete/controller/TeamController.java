package kr.co.teamplete.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamplete.dto.MemberVO;
import kr.co.teamplete.dto.TeamMemberVO;
import kr.co.teamplete.dto.TeamVO;
import kr.co.teamplete.service.MemberService;
import kr.co.teamplete.service.TeamService;

@Controller
public class TeamController {
	
	@Autowired
	private TeamService service;
	
	@Autowired
	private MemberService memberService;
	

	// 팀 등록한 뒤 팀 조회 페이지로 돌아감
	@RequestMapping(value="/team/{loginVO.memberid}", method = RequestMethod.POST)
	public String createTeam(TeamVO team, @PathVariable("loginVO.memberid") String memberid) {
		
		List<String> imgList = new ArrayList<>();
		imgList.add("action-2277292_1920.jpg");
		imgList.add("basketball-2258650_1920.jpg");
		imgList.add("friendship-2366955_1920.jpg");
		imgList.add("meeting-2284501_1920.jpg");
		imgList.add("startup-593341_1920.jpg");
		imgList.add("startup-594090_1920.jpg");
		imgList.add("home-office-569359_1920.jpg");
		imgList.add("business-2846221_1920.jpg");
		imgList.add("desk-3139127_1920.jpg");
		imgList.add("office-1209640_1920.jpg");
		imgList.add("picnic-1208229_1920.jpg");
		imgList.add("people-2557396_1920.jpg");
		imgList.add("soldier-919202_1920.jpg");
		
		Random random = new Random();
		int index = random.nextInt(imgList.size()); // (0 ~ imgList.size()-1)
		team.setImg(imgList.get(index));
		
		String ownerName = memberService.selectMemberById(memberid).getName();
		
		team.setMembers(ownerName);
		
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
				membersStr = membersStr + members.get(i).getName();
			}else membersStr = membersStr + members.get(i).getName() + ", ";
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
				System.out.println("deadLineDate.getTime(): " + deadLineDate.getTime());
				System.out.println("todayDate.getTime(): " + todayDate.getTime());
				
				calDateDays = calDate / (24 * 60 * 60 * 1000) + 1;
				
//				if(calDate < 0 && calDateDays <= 0) {
//					return "마감";
//				} else if(calDate < 0 && calDateDays == 1) {
//					return "D-day";
//				}
//				
				
				System.out.println(calDate);
				System.out.println(calDateDays);
				if(calDate < 0) {
					if(calDateDays <= 0) {
						return "마감";
					} else if(calDateDays == 1) {
						return "오늘";
					}
				}
				

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
		System.out.println(members.toString());
	
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
	
	//팀 정보 수정
	@RequestMapping(value = "/team/update/{teamId}", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView updateTeam(TeamVO team, @PathVariable("teamId") int teamId, Model model) {
		ModelAndView mav = new ModelAndView();
		TeamVO team2= service.detailTeam(teamId);
		mav.addObject("teamModify", team2);
		mav.setViewName("redirect:/team/" + team2.getOwnerId());
		service.updateTeamInfo(team);
		
		return mav;
	}
	
	@RequestMapping(value = "/team/delete/{teamId}", method = RequestMethod.DELETE)
	public void deleteTeam(@PathVariable("teamId") int teamId) {
		
		service.deleteTeamById(teamId);
	}
	
	

}
