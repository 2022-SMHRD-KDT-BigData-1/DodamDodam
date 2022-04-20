package kr.smhrd.dodam;

import java.io.File;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.smhrd.model.GalleryMapper;
import kr.smhrd.model.GalleryVO;

@Controller
public class GalleryController {
	
	
	private static final String FILE_SERVER_PATH = "/resources/upload";
	
	@Inject
	private GalleryMapper mapper;
	
	@RequestMapping("/GalleryInsert.do")
	public String GalleryInsert(MultipartFile[] uploadFile, GalleryVO vo, HttpSession session) {
		 System.out.println("파일 저장 시작");
		 System.out.println(vo.getG_date());
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
	      
	      
	      
	      
			return "redirect:/photo.do";
	}

	
//	@RequestMapping("/idCheck.do")
//	public @ResponseBody MemberVO idCheck(String id) {
//		System.out.println(id);
//		
//		MemberVO vo = mapper.idCheck(id);
//		
//		if(vo == null) {
//			vo = new MemberVO();
//		}
//		return vo;
//	}
	
}
