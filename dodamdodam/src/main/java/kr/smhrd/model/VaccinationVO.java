package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor // 기본 생성자 
@AllArgsConstructor // 생성자
@Data 
public class VaccinationVO {
	private int v_seq;
	private String v_name;
	private String v_date;
	private String c_seq;
	private String m_id;
}
