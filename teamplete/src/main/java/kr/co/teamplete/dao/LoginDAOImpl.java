package kr.co.teamplete.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamplete.dto.MemberVO;

@Repository
public class LoginDAOImpl implements LoginDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public MemberVO loin(MemberVO member) {
		
		MemberVO loginVO = sqlSession.selectOne("kr.co.teamplete.dao.MemberDAO.login", member);

		return loginVO;
	}

}
