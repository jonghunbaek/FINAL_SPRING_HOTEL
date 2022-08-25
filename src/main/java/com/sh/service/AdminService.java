package com.sh.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.sh.dto.AdminChartDto;
import com.sh.exception.ApplicationException;
import com.sh.mapper.AdminMapper;
import com.sh.mapper.DiningMapper;
import com.sh.vo.Admin;
import com.sh.vo.Location;
import com.sh.vo.RoomRev;
import com.sh.vo.RtRev;
import com.sh.web.form.AdminRegisterForm;

@Service
public class AdminService {
	
	
	@Value("${online.profiles.image.save-directory}") 
	private String profilesImageSaveDirectory;
	 
	
	@Autowired
	private AdminMapper adminMapper;
	
	@Autowired
	private DiningMapper diningMapper;

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

	// 지역별 매출합계 가져오기
	public AdminChartDto getAllSale(int locationNo) {
		
		AdminChartDto chart = new AdminChartDto();
		
		chart.setSaleSeoul(Math.round((adminMapper.getSaleSeoul())/10000)); 
		chart.setSaleBusan(Math.round((adminMapper.getSaleBusan())/10000)); 
		chart.setSaleJeju(Math.round((adminMapper.getSaleJeju())/10000)); 
		chart.setSaleGangreung(Math.round((adminMapper.getSaleGangreung())/10000)); 
		chart.setSaleGwangju(Math.round((adminMapper.getSaleGwangju())/10000)); 
		
		chart.setSaleJan(Math.round((adminMapper.getSaleJan(locationNo))/10000));
		chart.setSaleFeb(Math.round((adminMapper.getSaleFeb(locationNo))/10000));
		chart.setSaleMar(Math.round((adminMapper.getSaleMar(locationNo))/10000));
		chart.setSaleApr(Math.round((adminMapper.getSaleApr(locationNo))/10000));
	    chart.setSaleMay(Math.round((adminMapper.getSaleMay(locationNo))/10000));
	    chart.setSaleJun(Math.round((adminMapper.getSaleJan(locationNo))/10000));

		chart.setSaleStandard(Math.round((adminMapper.getSaleStandard(locationNo))/10000));
		chart.setSaleExecutive(Math.round((adminMapper.getSaleExecutive(locationNo))/10000));
		chart.setSaleSuite(Math.round((adminMapper.getSaleSuite(locationNo))/10000));
		
		int saleStan = Math.round((adminMapper.getSaleStandard(locationNo))/10000);
		int saleExec = Math.round((adminMapper.getSaleExecutive(locationNo))/10000);
		int saleSuit = Math.round((adminMapper.getSaleSuite(locationNo))/10000);
		
		int totalSale = saleStan + saleExec +saleSuit;
		double stanPer = Math.round((((double)saleStan/(double)totalSale)*100)*1000)/1000;
		double execPer = Math.round((((double)saleExec/(double)totalSale)*100)*1000)/1000;
		double suitPer = Math.round((((double)saleSuit/(double)totalSale)*100)*1000)/1000;
		
		chart.setTotalSaleByType(totalSale);
		
		chart.setStandardPer(stanPer);
		chart.setExecutivePer(execPer);
		chart.setSuitePer(suitPer);
		
		chart.setRevSeoul(adminMapper.getRevSeoul());
		chart.setRevBusan(adminMapper.getRevBusan());
		chart.setRevJeju(adminMapper.getRevJeju());
		chart.setRevGangreung(adminMapper.getRevGangreung());
		chart.setRevGwangju(adminMapper.getRevGwangju());
		
		chart.setRevJan(adminMapper.getRevJan(locationNo));
		chart.setRevFeb(adminMapper.getRevFeb(locationNo));
		chart.setRevMar(adminMapper.getRevMar(locationNo));
		chart.setRevApr(adminMapper.getRevApr(locationNo));
		chart.setRevMay(adminMapper.getRevMay(locationNo));
		chart.setRevJun(adminMapper.getRevJun(locationNo));
		
		chart.setRevStan(adminMapper.getRevStandard(locationNo));
		chart.setRevExec(adminMapper.getRevExecutive(locationNo));
		chart.setRevSuit(adminMapper.getRevSuite(locationNo));
		
		int totalRev = adminMapper.getRevStandard(locationNo) + adminMapper.getRevExecutive(locationNo) + adminMapper.getRevSuite(locationNo);
		double revStanPer = Math.round((((double)adminMapper.getRevStandard(locationNo)/(double)totalRev)*100)*1000)/1000;
		double revExecPer = Math.round((((double)adminMapper.getRevExecutive(locationNo)/(double)totalRev)*100)*1000)/1000;
		double revSuitPer = Math.round((((double)adminMapper.getRevSuite(locationNo)/(double)totalRev)*100)*1000)/1000;
		
		chart.setTotalRevByType(totalRev);
		chart.setRevStanPer(revStanPer);
		chart.setRevExecPer(revExecPer);
		chart.setRevSuitPer(revSuitPer);
		
		return chart;	
	}

	public Location getLocationByNo(int locationNo) {
		return diningMapper.getLocationByNo(locationNo);
	}

	public List<RoomRev> getRoomRevListByLocation(int locationNo) {
		return adminMapper.getRoomRevListByLocation(locationNo);
	}

	public List<RtRev> getRtRevListByLocation(int locationNo) {
		return adminMapper.getRtmRevListByLocation(locationNo);
	}
	
}
