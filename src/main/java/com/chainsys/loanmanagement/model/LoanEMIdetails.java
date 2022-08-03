package com.chainsys.loanmanagement.model;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="loan_emi_details")
public class LoanEMIdetails {
	@Id
	@Column(name="loan_id")
	private int loanId ;
	
	@Column(name="payment_amount")
	private float paymentAmount;
	
	@Column(name="payment_id")
	private int paymentId ;
	
	@Column(name="user_id")
	private int userId ;
	
	@Column(name="emi_date")
	private Date emiDate;
	
	public int getLoanId() {
		return loanId;
	}

	public void setLoanId(int loanId) {
		this.loanId = loanId;
	}

	public int getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Date getEmiDate() {
		return emiDate;
	}

	public void setEmiDate(Date emiDate) {
		this.emiDate = emiDate;
	}

	
	public float getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(float paymentAmount) {
		this.paymentAmount = paymentAmount;
	}
	

}
