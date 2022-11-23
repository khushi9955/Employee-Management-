package Utility;

public class Utility {
	
	public static String stringValue(String str) {
		
		String value="";
		if (str == null) {
			value="";
		}else {
			value=str;
		}
		return value;
	}
	
public static Double doubleValue(String str) {
		Double value=0.0d;
		if (str == null || str.length()==0) {
		}else {
			value=Double.parseDouble(str);
		}
		return value;
	}
public static Long longValue(String str) {
	Long value=0l;
	if (str == null || str.length()==0) {
	}else {
		value=Long.parseLong(str);
	}
	return value;
}

}
