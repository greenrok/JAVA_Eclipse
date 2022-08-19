package lesson.gntp.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTimeService {

	public String getDateTime() {
		String now = null;
		String pattern = "YYYY/MM/dd HH:mm:ss";
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		now = sdf.format(new Date());
		
		return now;
	}
}
