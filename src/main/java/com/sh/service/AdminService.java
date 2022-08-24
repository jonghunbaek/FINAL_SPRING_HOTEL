package com.sh.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.sh.exception.ApplicationException;
import com.sh.mapper.AdminMapper;
import com.sh.vo.Admin;
import com.sh.vo.Location;
import com.sh.web.form.AdminRegisterForm;

@Service
public class AdminService {
	
	
	@Value("${online.profiles.image.save-directory}") 
	private String profilesImageSaveDirectory;
	 
	
	@Autowired
	private AdminMapper adminMapper;

	// 사원정보 존재유무 및 비밀번호 일치여부 확인
	public Admin login(String email, String password) {
		Admin admin = adminMapper.getAdminByEmail(email);
		if (admin == null) {
			throw new ApplicationException("사원정보가 존재하지 않습니다.");
		}
		if (!admin.getPassword().equals(password)) {
			throw new ApplicationException("비밀번호가 일치하지 않습니다.");
		}
		return admin;
	}

	// 입력된 이메일의 존재여부 체크
	public int emailCheck(String email) {

		int emailCheck = adminMapper.checkAdminByEmail(email);
		System.out.println("ckeck: " + emailCheck);
		return emailCheck;
	}
	
	public void addNewAdmin(AdminRegisterForm adminRegisterForm) throws Exception {
		Admin admin = adminMapper.getAdminByEmail(adminRegisterForm.getEmail());
		
		if (admin != null) {
			throw new ApplicationException("이미 사용중인 이메일입니다.");
		}
		
		
		admin = new Admin();
		BeanUtils.copyProperties(adminRegisterForm, admin);
		
		//admin.setLocation(new Location(adminRegisterForm.getLocationNo())); 
		MultipartFile upfile = adminRegisterForm.getProfileFile();
		
		if (!upfile.isEmpty()) {
			
			String filename = upfile.getOriginalFilename();
			admin.setProfileImage(filename);
			
			// 업로드된 첨부파일을 resources/images/profile 폴더에 저장시킨다.
			 InputStream in = upfile.getInputStream(); // 업로드된 첨부파일은 임시디렉토리에 저장되는데 그 파일을
			 FileOutputStream out = new FileOutputStream(new File(profilesImageSaveDirectory, filename)); 
			 FileCopyUtils.copy(in, out);
			 
		}
		
		adminMapper.insertAdmin(admin);
	}
	
}
