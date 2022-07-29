package com.chainsys.loanmanagement.pojo;

import java.util.Date;

public class LoanEMIdetails {
	
	private int loan_id ;
	private double payment_amount;
	private int payment_id ;
	private int user_id ;
	private Date emi_date;
	
	public int getLoan_id() {
		return loan_id;
	}
	public void setLoan_id(int loan_id) {
		this.loan_id = loan_id;
	}
	public double getPayment_amount() {
		return payment_amount;
	}
	public void setPayment_amount(double payment_amount) {
		this.payment_amount = payment_amount;
	}
	public int getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Date getEmi_date() {
		return emi_date;
	}
	public void setEmi_date(Date emi_date) {
		this.emi_date = emi_date;
	}


}
