package com.chainsys.loanmanagement.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "loan_emi_details")
public class LoanEMIdetails {

	@Column(name = "loan_id")
	private int loanId;
	@Column(name = "payment_amount")
	private int paymentAmount;
	@Id
	@Column(name = "payment_id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "payment_id_seq")
    @SequenceGenerator(name = "payment_id_seq", sequenceName = "payment_id_seq",  allocationSize = 1)
	private int paymentId;
	@Column(name = "user_id")
	private int userId;
	@Column(name = "emi_date")
	private Date emiDate;
	
//------------------------------------------------------------------------------------------
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="loan_id",nullable =false,insertable =false,updatable =false)
	private Loan loan; // pk class
	
//-------------------------------------------------------------------------------------------	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="user_id",nullable =false,insertable =false,updatable =false)
	private UserDetails userdetails; // pk class
//------------------------------------------------------------------------------------	
	public int getLoanId() {
		return loanId;
	}

	public void setLoanId(int loanId) {
		this.loanId = loanId;
	}

	public int getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(int paymentAmount) {
		this.paymentAmount = paymentAmount;
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

}
