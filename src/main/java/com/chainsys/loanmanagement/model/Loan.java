package com.chainsys.loanmanagement.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="loan")
public class Loan {
	@Id
	@Column(name="loan_id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "loan_id_seq")
    @SequenceGenerator(name = "loan_id_seq", sequenceName = "loan_id_seq",  allocationSize = 1)
	private int loanId;
	@Column(name="loan_type")
	private String loanType ;
	@Column(name="user_id")
	private int userId;

	//---------------------------------------------------------------
	@OneToMany(mappedBy ="loan",fetch=FetchType.LAZY)
	private List<LoanDetails> loandetails; // fk class
	
	public List<LoanDetails> getLoandetails() {
		return loandetails;
	}

	public void setLoandetails(List<LoanDetails> loandetails) {
		this.loandetails = loandetails;
	}
//-----------------------------------------------------------------
	@OneToMany(mappedBy ="loan",fetch=FetchType.LAZY)
	private List<LoanEMIdetails> emidetails; // fk class
	
	
	public List<LoanEMIdetails> getEmidetails() {
		return emidetails;
	}

	public void setEmidetails(List<LoanEMIdetails> emidetails) {
		this.emidetails = emidetails;
	}

//----------------------------------------------------------------------
	public int getLoanId() {
		return loanId;
	}

	public void setLoanId(int loanId) {
		this.loanId = loanId;
	}

	public String getLoanType() {
		return loanType;
	}

	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	
}
