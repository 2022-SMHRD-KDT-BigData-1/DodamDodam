package kr.smhrd.dodam;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.DiaryMapper;
import kr.smhrd.model.DiaryVO;

@Controller
public class DiaryController {
	@Inject
	private DiaryMapper mapper;
	
	@RequestMapping("/diaryInsert.do")
	public String diaryInsert(DiaryVO vo) {
		mapper.diaryInsert(vo);
		return "redirect:/diary.do";
	}
}
