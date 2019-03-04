package controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileController {

	@RequestMapping("uploadView.do")
	public String upload() {
		return "/upload";
	}
	
	@RequestMapping("/fileUpload")
	public String handleFormUpload(@RequestParam("name") String name,
			@RequestParam("uploadfile") List<MultipartFile> uploadfile,
			HttpServletRequest request) {
		// �ж����ϴ��ļ��Ƿ����
		if (!uploadfile.isEmpty() && uploadfile.size() > 0) {
			//ѭ������ϴ����ļ�
			for (MultipartFile file : uploadfile) {
				// ��ȡ�ϴ��ļ���ԭʼ����
				String originalFilename = file.getOriginalFilename();
				// �����ϴ��ļ��ı����ַĿ¼
				String dirPath = 
                       request.getServletContext().getRealPath("/upload/");
				File filePath = new File(dirPath);
				// ��������ļ��ĵ�ַ�����ڣ����ȴ���Ŀ¼
				if (!filePath.exists()) {
					filePath.mkdirs();
				}
				// ʹ��UUID��ͨ��Ψһ��ʶ�����������ϴ����ļ�����(�ϴ���_uuid_ԭʼ�ļ�����)
				String newFilename = name+ "_"+UUID.randomUUID() + 
                                                   "_"+originalFilename;
				try {
					// ʹ��MultipartFile�ӿڵķ�������ļ��ϴ���ָ��λ��
					file.transferTo(new File(dirPath + newFilename));
				} catch (Exception e) {
					e.printStackTrace();
                       return"error";
				}
			}
			// ��ת���ɹ�ҳ��
			
			return "/success";
		}else{
			return"error";
		}
	}
	

}
