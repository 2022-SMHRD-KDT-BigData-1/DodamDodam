package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor // 기본 생성자 
@AllArgsConstructor // 생성자
@Data 
public class ChildrenVO {
	
	private int c_seq;
	private String c_name;
	private String c_birthdate;
	private String c_gender;
	private String m_id;
	private String f_height;
	private String m_height;
}
