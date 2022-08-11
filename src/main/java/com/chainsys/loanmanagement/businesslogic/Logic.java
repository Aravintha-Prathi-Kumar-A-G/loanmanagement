package com.chainsys.loanmanagement.businesslogic;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Logic {
	public static long balanceEmIAmount(long totalAmount,long paidEmI) {
		return totalAmount-paidEmI;
	}
	public static int increamentPaidEmI(int paidEmI) {
		return paidEmI+1;
	}
	public static int decreamentPendingEmI(int PendingEmI) {
		return PendingEmI-1;
	}
	public static Date increamentDueDate(Date date) {
		String date1=date+"";
		String dateArray[]=date1.split("-");
		int month=Integer.parseInt(dateArray[1]);
		int year=Integer.parseInt(dateArray[0]);
		if(month<12 && month>0) {
			month+=1;
		}
		else {
			month=1;
			year+=1;
		}
		String resultDate=dateArray[2]+"/"+month+"/"+year;
		SimpleDateFormat dateFormat=new SimpleDateFormat("dd/MM/yyyy");
		Date nextDueDate = null;
		try {
			nextDueDate=new java.sql.Date(dateFormat.parse(resultDate).getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return nextDueDate;
	}
	
	public static Date getInstanceDate() {
        Calendar vcalendar=Calendar.getInstance();
        String dates =  vcalendar.get(Calendar.DATE) + "/" + (vcalendar.get(Calendar.MONTH)+1) + "/" + vcalendar.get(Calendar.YEAR);
        SimpleDateFormat dateFormat=new SimpleDateFormat("dd/MM/yyyy");
        Date date=null;
        try {
            date=new java.sql.Date(dateFormat.parse(dates).getTime());
//        	date=dateFormat.parse(dates);
            System.out.println(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
//	public static void main(String[] args) {
//		
//		SimpleDateFormat dateFormat=new SimpleDateFormat("dd/MM/yyyy");
//		Date nextDueDate = null;
//		try {
//			nextDueDate=new java.sql.Date(dateFormat.parse("05/12/2022").getTime());
//		} catch (ParseException e) {
//			e.printStackTrace();
//		}
//		System.out.println(nextDueDate);
//		System.out.println(increamentDueDate(nextDueDate));
//		System.out.println(getInstanceDate());
//	}
}
