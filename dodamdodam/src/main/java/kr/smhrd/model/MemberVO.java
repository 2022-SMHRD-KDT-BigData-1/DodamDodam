package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor // 기본 생성자 
@AllArgsConstructor // 생성자
@Data 
public class MemberVO {
	private String m_id;
	private String m_pw;
	private String m_nick;
	private String m_tel;
	private String m_gender;
	private String m_joindate;
	private String m_type;
}
