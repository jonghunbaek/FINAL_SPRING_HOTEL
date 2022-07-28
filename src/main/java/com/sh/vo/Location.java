package com.sh.vo;

import lombok.Setter;
import lombok.ToString;
import org.apache.ibatis.type.Alias;
import lombok.Getter;

@Getter
@Setter
@ToString
@Alias("Location")

public class Location {
	private int no;
	private String name;
}
