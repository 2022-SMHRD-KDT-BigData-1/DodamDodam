package kr.smhrd.dodam;

import java.util.ArrayList;
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
import kr.smhrd.model.PieVO;

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
	@RequestMapping("/diaryDelete.do")
	public String diaryDelete(DiaryVO vo) {
		mapper.emotionDelete(vo); 
		System.out.println("감정테이블 삭제 완료");
		mapper.diaryDelete(vo); 
		System.out.println("다이어리 테이블 삭제 완료");
		return "redirect:/diary.do";
	}
	

	@RequestMapping("/diarySelect.do")
	public @ResponseBody List<PieVO> diarySelect(Model model, HttpSession session) {
		
		System.out.println("오긴 옴 ");
		
		MemberVO member = (MemberVO) session.getAttribute("member");
		List<DiaryVO> diarylist = mapper.DiaryAllSelect(member.getM_id());
		List<EmotionVO> emotionList = mapper.emotionList(member.getM_id());
		List<PieVO> pieList = new ArrayList<PieVO>();
		
		for(int i = 0; i < diarylist.size(); i++) {
			pieList.add(i, new PieVO(diarylist.get(i).getC_seq(), diarylist.get(i).getD_title(), diarylist.get(i).getD_content(), diarylist.get(i).getD_msg(), diarylist.get(i).getD_date(), emotionList.get(i).getE_joy(), emotionList.get(i).getE_sorrow(), emotionList.get(i).getE_anger(), emotionList.get(i).getE_unrest()));
		}
		
		System.out.println("여기까지오나?");
		
		return pieList;
	}
}
