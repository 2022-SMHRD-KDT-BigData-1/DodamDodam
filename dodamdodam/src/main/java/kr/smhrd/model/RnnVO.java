package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor // 기본 생성자 
@AllArgsConstructor // 생성자
@Data 
public class RnnVO {
	private int r_seq;
	private int n_seq;
	private Double r_height;
	private Double r_weight;
	private String r_date;
	private String m_id;
}
