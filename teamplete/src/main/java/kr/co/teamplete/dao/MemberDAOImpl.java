package kr.co.teamplete.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamplete.dto.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	SqlSessionTemplate session;

	@Override
	public void insert(MemberVO member) {
		session.insert("kr.co.teamplete.dao.MemberDAO.insertMember", member);
	}

}
