package kr.co.teamplete.dto;

import javax.validation.constraints.NotEmpty;

import org.apache.ibatis.type.Alias;

//@Alias("MemberVO")
public class MemberVO {
	@NotEmpty(message="필수항목입니다.")
	private String memberid;
	@NotEmpty(message="필수항목입니다.")
	private String name;
	@NotEmpty(message="필수항목입니다.")
	private String password;
	private String email, type, regDate;
	
	public MemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberVO(String memberid, String name, String password, String email, String type, String regDate) {
		super();
		this.memberid = memberid;
		this.name = name;
		this.password = password;
		this.email = email;
		this.type = type;
		this.regDate = regDate;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "MemberVO [memberid=" + memberid + ", name=" + name + ", password=" + password + ", email=" + email
				+ ", type=" + type + ", regDate=" + regDate + "]";
	}

}
