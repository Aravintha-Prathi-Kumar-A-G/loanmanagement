package com.chainsys.loanmanagement.model;



import java.sql.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="users_details")
public class UserDetails {
	@Id
	@Column(name="user_id")
	private int userId; 
	
	@Column(name="users_name")
	private String userName;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="age")
	private int age ;
	
	@Column(name="dob")
	private Date dob ;
	
	@Column(name="phone_no")
	private long phoneNumber ;
	
	@Column(name="pan_no")
	private String pancardNumber ;
	
	@Column(name="account_no")
	private long accountNumber ;
	
	@Column(name="email")
	private String email;
	
	@Column(name="address")
	private String address;
	
	@Column(name="pincode")
	private int pincode ;
	
	@Column(name="role")
	private String role ;
	
	@Column(name="password")
    private String 	password ;

//------------------------------------------------------------------------

	@OneToMany(mappedBy="userdetail",fetch=FetchType.LAZY)
	private List<LoanDetails> loandetails ; // LoanDetails (fk class)
	
	public List<LoanDetails> getLoandetails() {
		return loandetails;
	}

	public void setLoandetails(List<LoanDetails> loandetails) {
		this.loandetails = loandetails;
	}

//-----------------------------------------------------------------------
	@OneToMany(mappedBy="userdetails",fetch=FetchType.LAZY)
	private List<LoanEMIdetails> loanemidetails ; // LoanEMIdetails (fk class)
	
	public List<LoanEMIdetails> getLoanemidetails() {
		return loanemidetails;
	}

	public void setLoanemidetails(List<LoanEMIdetails> loanemidetails) {
		this.loanemidetails = loanemidetails;
	}
//---------------------------------------------------------------------------------
	
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPancardNumber() {
		return pancardNumber;
	}

	public void setPancardNumber(String pancardNumber) {
		this.pancardNumber = pancardNumber;
	}

	public long getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	
}
