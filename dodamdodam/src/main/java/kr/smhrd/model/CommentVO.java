package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor // 기본 생성자 
@AllArgsConstructor // 생성자
@Data 
public class CommentVO {
	private int cmt_seq;
	private int b_seq;
	private String cmt_content;
	private String cmt_date;
	private String m_id;
	private String cmt_cnt;
}
