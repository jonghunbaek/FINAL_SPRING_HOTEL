package com.sh.vo;

import lombok.Setter;
import lombok.ToString;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Alias("Location")
public class Location {
	private Integer no;
	private String name;
	
	public Location(String name) {
		this.name = name;
	}

	public Location(int locationNo) {
		this.no = locationNo;
	}
}
