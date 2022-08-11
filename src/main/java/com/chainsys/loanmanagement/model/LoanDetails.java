package com.chainsys.loanmanagement.model;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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
import javax.validation.constraints.NotNull;


@Entity
@Table(name="loan_details")
public class LoanDetails {
	
	@Column(name="loan_id")
	private int loanId;
	
	@Id
	@Column(name="user_id")
	private int userId;
	
	@Column(name="loan_date")
	private Date loanDate ;
	
	@Column(name="loan_amount")
	private double loanAmount ;	
	
	@Column(name="no_of_emis")
	private int noOfEmis;
	
	@Column(name="due_date")
	private Date dueDate ;
	
	@Column(name="emi_paid")
	private Date emiPaid ;
	
	@Column(name="no_of_emi_pending")
	private int noOfEmiPending;
	
	@Column(name="no_of_emi_paid") 
	private int noOfEmiPaid;
	
	@Column(name="interest")
	private float interest;
	
	@Column(name="total_amount")
	private long totalAmount;
	
	@Column(name="loan_status")
	private String loanStatus;
	
	@Column (name="monthly_emi_amount")
	private float monthlyEMIAmount;
	
	//-------------------------------------------------
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="user_id",nullable=false,insertable=false,updatable=false)
	private UserDetails userdetail; // pk class
	
//------------------------------------------------------------
	
		@ManyToOne(fetch=FetchType.LAZY)
		@JoinColumn(name="loan_id",nullable =false,insertable =false,updatable =false)
		private Loan loan; // pk class
// ------------------------------------------------------------		
		public int getLoanId() {
			return loanId;
		}

		public void setLoanId(int loanId) {
			this.loanId = loanId;
		}

		public int getUserId() {
			return userId;
		}

		public void setUserId(int userId) {
			this.userId = userId;
		}

		public Date getLoanDate() {
			return loanDate;
		}

		public void setLoanDate(Date loanDate) {
			this.loanDate=loanDate;
		}

		public double getLoanAmount() {
			return loanAmount;
		}

		public void setLoanAmount(double loanAmount) {
			this.loanAmount = loanAmount;
		}

		public int getNoOfEmis() {
			return noOfEmis;
		}

		public void setNoOfEmis(int noOfEmis) {
			this.noOfEmis = noOfEmis;
		}

		public Date getDueDate() {
			return dueDate;
		}

		public void setDueDate(Date dueDate) {
			this.dueDate = dueDate;
		}

		public Date getEmiPaid() {
			return emiPaid;
		}

		public void setEmiPaid(Date emiPaid) {
			this.emiPaid = emiPaid;
		}

		public int getNoOfEmiPending() {
			return noOfEmiPending;
		}

		public void setNoOfEmiPending(int noOfEmiPending) {
			this.noOfEmiPending = noOfEmiPending;
		}

		public int getNoOfEmiPaid() {
			return noOfEmiPaid;
		}

		public void setNoOfEmiPaid(int noOfEmiPaid) {
			this.noOfEmiPaid = noOfEmiPaid;
		}

		public float getInterest() {
			return interest;
		}

		public void setInterest(float interest) {
			this.interest = interest;
		}

		public long getTotalAmount() {
			return totalAmount;
		}

		public void setTotalAmount(long totalAmount) {
			this.totalAmount = totalAmount;
		}

		public String getLoanStatus() {
			return loanStatus;
		}

		public void setLoanStatus(String loanStatus) {
			this.loanStatus = loanStatus;
		}

		public float getMonthlyEMIAmount() {
			return monthlyEMIAmount;
		}

		public void setMonthlyEMIAmount(float monthlyEMIAmount) {
			this.monthlyEMIAmount = monthlyEMIAmount;
		}

		public UserDetails getUserdetail() {
			return userdetail;
		}

		public void setUserdetail(UserDetails userdetail) {
			this.userdetail = userdetail;
		}

		public Loan getLoan() {
			return loan;
		}

		public void setLoan(Loan loan) {
			this.loan = loan;
		}
}
