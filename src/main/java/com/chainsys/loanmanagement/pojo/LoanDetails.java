package com.chainsys.loanmanagement.pojo;

import java.util.Date;

public class LoanDetails {
	
	private int user_id ;
	private int loan_id ;
	private Date loan_date ;
	private double loan_amount ;
	private int no_of_emis;
	private Date due_date ;
	private Date emi_paid ;
	private String emi_pending ;
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getLoan_id() {
		return loan_id;
	}
	public void setLoan_id(int loan_id) {
		this.loan_id = loan_id;
	}
	public Date getLoan_date() {
		return loan_date;
	}
	public void setLoan_date(Date loan_date) {
		this.loan_date = loan_date;
	}
	public double getLoan_amount() {
		return loan_amount;
	}
	public void setLoan_amount(double loan_amount) {
		this.loan_amount = loan_amount;
	}
	public int getNo_of_emis() {
		return no_of_emis;
	}
	public void setNo_of_emis(int no_of_emis) {
		this.no_of_emis = no_of_emis;
	}
	public Date getDue_date() {
		return due_date;
	}
	public void setDue_date(Date due_date) {
		this.due_date = due_date;
	}
	public Date getEmi_paid() {
		return emi_paid;
	}
	public void setEmi_paid(Date emi_paid) {
		this.emi_paid = emi_paid;
	}
	public String getEmi_pending() {
		return emi_pending;
	}
	public void setEmi_pending(String emi_pending) {
		this.emi_pending = emi_pending;
	}
	

}
