package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor // 기본 생성자 
@AllArgsConstructor // 생성자
@Data 
public class PieVO {
	private int c_seq;
	private String d_title;
	private String d_content;
	private String d_msg;
	private String d_date;
	private String e_joy;
	private String e_sorrow;
	private String e_anger;
	private String e_unrest;
}
