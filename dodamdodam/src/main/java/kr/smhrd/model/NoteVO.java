package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor // 기본 생성자 
@AllArgsConstructor // 생성자
@Data 
public class NoteVO {
	private int n_seq; // 수첩 번호
	private String m_id; // 회원 아이디
	private int c_seq; // 자녀 번호
	private String n_date; //접종날짜
	private Double n_height; //키
	private Double n_weight; //몸무게
	private String n_significant; //특이사항
}
