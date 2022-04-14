package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor // 기본 생성자 
@AllArgsConstructor // 생성자
@Data 
public class EducationVO {
	private int ed_seq;
	private String ed_content;
	private String m_id;
}
