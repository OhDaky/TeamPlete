package kr.co.teamplete.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.teamplete.dao.MemberDAO;
import kr.co.teamplete.dto.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDAO memberDAO;
	
	@Override
	public void insertMember(MemberVO member) {
		memberDAO.insert(member);	
	}

}
