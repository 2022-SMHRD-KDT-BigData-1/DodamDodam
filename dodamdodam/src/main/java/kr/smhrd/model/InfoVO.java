package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor // 기본 생성자 
@AllArgsConstructor // 생성자
@Data 
public class InfoVO {
	private int i_seq;
	private int i_age;
	private String i_info;
	private String m_id;
}
