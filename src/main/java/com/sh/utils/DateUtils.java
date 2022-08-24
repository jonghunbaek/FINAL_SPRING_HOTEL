package com.sh.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


public class DateUtils {

	public static String getDayByDate(String date) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date nDate = new Date(sdf.parse(date).getTime());
		String day = "";
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(nDate);         
		int dayNum = cal.get(Calendar.DAY_OF_WEEK);         
		
		switch(dayNum){
	      case 1:
	          day = "일";  
	          break ;
	      case 2:
	          day = "월";
	          break ;
	      case 3:
	          day = "화";
	          break ;
	      case 4:
	          day = "수";
	          break ;
	      case 5:
	          day = "목";
	          break ;
	      case 6:
	          day = "금";
	          break ;
	      case 7:
	          day = "토";
	          break ;
		}
		
		return day;
	}
}
