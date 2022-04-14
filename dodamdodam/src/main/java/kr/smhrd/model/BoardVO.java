package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor // 기본 생성자 
@AllArgsConstructor // 생성자
@Data 
public class BoardVO {
	
	
	private int b_seq; //글 번호
	private String b_title; //제목
	private String b_content; //내용
	private String b_file; //파일
	private String b_cnt;  //조회수
	private String b_date;  //작성일
	private String m_nick;  //닉네임
	private String b_category;  //분류
	
	
}
