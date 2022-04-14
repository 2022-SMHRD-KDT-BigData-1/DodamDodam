package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor // 기본 생성자 
@AllArgsConstructor // 생성자
@Data 
public class GalleryVO {
	private int g_seq;
	private String m_id;
	private String p1;
	private String p2;
	private String p3;
	private String p4;
	private String p5;
	private String p6;
	private String p7;
	private String p8;
	private String p9;
	private String p10;
	private String g_date;
	private int c_seq;
}
