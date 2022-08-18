package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString @Alias("AllergySelected")
@NoArgsConstructor
public class AllergySelected {

	private int rtRevNo;
	private int allergyNo;
	
//	public AllergySelected(int rtRevNo, int allergyNo) {
//		this.rtRevNo = rtRevNo;
//		this.allergyNo = allergyNo;
//	}
	
}
