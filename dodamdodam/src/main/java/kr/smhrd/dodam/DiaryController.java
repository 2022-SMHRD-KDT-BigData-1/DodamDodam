package kr.smhrd.dodam;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.model.DiaryMapper;
import kr.smhrd.model.DiaryVO;
import kr.smhrd.model.EmotionVO;
import kr.smhrd.model.MemberVO;

@Controller
public class DiaryController {
	@Inject
	private DiaryMapper mapper;
	
	@RequestMapping("/diaryInsert.do")
	public String diaryInsert(DiaryVO vo) {
		mapper.diaryInsert(vo);
		return "redirect:/diary.do";
	}
	@RequestMapping("/emotionList.do")
	public @ResponseBody List<EmotionVO> emotionList(Model model, HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		List<EmotionVO> emotionList = mapper.emotionList(member.getM_id()); 
		System.out.println(emotionList.get(0).getE_anger());
		return emotionList;
	}
}
