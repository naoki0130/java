package model;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class GreetingLogic {
	public String getGreet() {
		Calendar cal = Calendar.getInstance();

		SimpleDateFormat sdf = new SimpleDateFormat("HH");
		int hour = Integer.parseInt(sdf.format(cal.getTime()));

		String greeting = "";

		  //現在時刻により判定
		if( hour >= 0 && hour < 6){
		  greeting = "早朝にお疲れ様です。";
		}else if( hour < 11 ){
		  greeting = "おはようございます。";
		}else if( hour < 16 ){
		  greeting = "こんにちは。";
		}else if( hour < 20 ){
		  greeting = "こんばんは。";
		}else{
		  greeting = "深夜までお疲れ様です。";
		}
		  return greeting;

	}
}
