package kr.smhrd.dodam;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.smhrd.model.DiaryVO;
import kr.smhrd.model.GalleryMapper;
import kr.smhrd.model.GalleryVO;
import kr.smhrd.model.MemberVO;

@Controller
public class GalleryController {
	
	
	
	@Inject
	private GalleryMapper mapper;
		
	@RequestMapping("/GalleryInsert.do")
	public String GalleryInsert(MultipartFile[] uploadFile, GalleryVO vo, HttpSession session) {
		 System.out.println("파일 저장 시작");
		 System.out.println(vo.getG_date());
		 System.out.println(vo.getM_id());
		 System.out.println(vo.getG_title());
	      Logger log = LoggerFactory.getLogger(getClass());
	      // 디렉토리에 폴더 생성
	      
//	      String path = FILE_SERVER_PATH; // 폴더 경로
	      String path = session.getServletContext().getRealPath("resources/test/");
	      System.out.println(path);
	      File Folder = new File(path);
	      // 디렉토리 생성
	      if(!Folder.exists()) {
	         try {
	            Folder.mkdir(); // 폴더 생성
	            System.out.println("폴더 생성");
	         }
	         catch(Exception e) {
	            e.getStackTrace();
	         }
	      } else {
	         System.out.println("이미 폴더가 존재합니다.");
	      }
	      
	      System.out.println(path);
	      
	      // 파일 저장 시작
	      String folder = path; // 생성된 폴더로 경로 설정
	      System.out.println(uploadFile.length);
	      for(MultipartFile multipartFile : uploadFile) {
	         System.out.println("for문 내부");
	         log.info("---------");
	         log.info("Upload File Name : " + multipartFile.getOriginalFilename());
	         log.info("Upload File Size : " + multipartFile.getSize());
	         
	         File saveFile = new File(folder, multipartFile.getOriginalFilename());
	         
	         try {
	            multipartFile.transferTo(saveFile);
	         } catch (Exception e) {
	            log.error(e.getMessage());
	         }
	         
	      }
	      
	      for(int i = 0; i < uploadFile.length; i++) {
	    	  if(i == 0) {
	    		  vo.setP1(uploadFile[0].getOriginalFilename());
	    	  }else if(i == 1) {
	    		  vo.setP2(uploadFile[1].getOriginalFilename());
	    	  }else if(i == 2) {
	    		  vo.setP3(uploadFile[2].getOriginalFilename());
	    	  }else if(i == 3) {
	    		  vo.setP4(uploadFile[3].getOriginalFilename());
	    	  }else if(i == 4) {
	    		  vo.setP5(uploadFile[4].getOriginalFilename());
	    	  }else if(i == 5) {
	    		  vo.setP6(uploadFile[5].getOriginalFilename());
	    	  }else if(i == 6) {
	    		  vo.setP7(uploadFile[6].getOriginalFilename());
	    	  }else if(i == 7) {
	    		  vo.setP8(uploadFile[7].getOriginalFilename());
	    	  }else if(i == 8) {
	    		  vo.setP9(uploadFile[8].getOriginalFilename());
	    	  }else if(i == 9) {
	    		  vo.setP10(uploadFile[9].getOriginalFilename());
	    	  }
	      }
	      
	      mapper.GalleryInsert(vo);
	      
	      
			return "redirect:/photo.do";
	}
	
	@RequestMapping("/galleryDelete.do")
	public String galleryDelete(GalleryVO vo) {
		mapper.galleryDelete(vo); 
		System.out.println("갤러리 테이블 데이터 삭제 완료");
		return "redirect://photo.do";
	}
	
//	@RequestMapping("/gallerySelect.do")
//	public @ResponseBody List<GalleryVO> gallerySelect(HttpSession session) {
//		MemberVO member = (MemberVO) session.getAttribute("member");
//		List<GalleryVO> vo = mapper.gallerySelect(member.getM_id());
//		if(vo == null) {
//			vo = new ArrayList<GalleryVO>();
//		}
//		return vo;
//	}
	@RequestMapping("/photo.do")
	public void photo(HttpSession session, Model model) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		if(member != null) {
			List<GalleryVO> gallery = mapper.gallerySelect(member.getM_id());
			
			model.addAttribute("Gallery", gallery);
		}
	}
	
	
}
