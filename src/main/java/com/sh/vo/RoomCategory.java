package com.sh.vo;

import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("RoomCategory")

public class RoomCategory {

	private int no;
	private String name;
	private Category category;
	private int roomGroupNo;
	
	
	
}
