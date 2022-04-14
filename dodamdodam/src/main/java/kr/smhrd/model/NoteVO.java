package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor // 기본 생성자 
@AllArgsConstructor // 생성자
@Data 
public class NoteVO {
	private int n_seq;
	private String m_id;
	private int c_seq;
	private String n_date;
	private Double n_height;
	private Double n_weight;
	private String n_significant;
}
