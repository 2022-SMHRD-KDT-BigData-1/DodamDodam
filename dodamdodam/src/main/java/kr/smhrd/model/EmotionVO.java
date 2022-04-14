package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor // 기본 생성자 
@AllArgsConstructor // 생성자
@Data 
public class EmotionVO {
	private int e_seq;
	private String m_id;
	private int d_seq;
	private String e_result;
	private String e_joy;
	private String e_sorrow;
	private String e_anger;
	private String e_unrest;
}
