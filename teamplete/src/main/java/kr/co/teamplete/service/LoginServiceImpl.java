package kr.co.teamplete.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.teamplete.dao.LoginDAO;
import kr.co.teamplete.dto.MemberVO;


@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private LoginDAO loginDAO;
	
	@Override
	public MemberVO login(MemberVO member) {
		
		MemberVO loginVO = loginDAO.loin(member);
		return loginVO;
	
	}

}
