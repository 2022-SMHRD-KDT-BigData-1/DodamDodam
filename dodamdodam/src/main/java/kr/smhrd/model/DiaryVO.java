package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor // 기본 생성자 
@AllArgsConstructor // 생성자
@Data 
public class DiaryVO {
	private int d_seq;
	private String m_id;
	private int c_seq;
	private String d_title;
	private String d_content;
	private String d_msg;
	private String d_date;
}
