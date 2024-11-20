package com.Bank.BankingWeb.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class UserLoan {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int loanId; 
	
	String name;
	String address;
	int phone_no;
	int loan_amount;
	String purpose;
	String emp_status;
	int mon_income;
	String add_info;
	
	public UserLoan() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserLoan(int loanId, String name, String address, int phone_no, int loan_amount, String purpose,
			String emp_status, int mon_income, String add_info) {
		super();
		this.loanId = loanId;
		this.name = name;
		this.address = address;
		this.phone_no = phone_no;
		this.loan_amount = loan_amount;
		this.purpose = purpose;
		this.emp_status = emp_status;
		this.mon_income = mon_income;
		this.add_info = add_info;
	}

	@Override
	public String toString() {
		return "UserLoan [loanId=" + loanId + ", name=" + name + ", address=" + address + ", phone_no=" + phone_no
				+ ", loan_amount=" + loan_amount + ", purpose=" + purpose + ", emp_status=" + emp_status
				+ ", mon_income=" + mon_income + ", add_info=" + add_info + "]";
	}

	public int getLoanId() {
		return loanId;
	}

	public void setLoanId(int loanId) {
		this.loanId = loanId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(int phone_no) {
		this.phone_no = phone_no;
	}

	public int getLoan_amount() {
		return loan_amount;
	}

	public void setLoan_amount(int loan_amount) {
		this.loan_amount = loan_amount;
	}

	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public String getEmp_status() {
		return emp_status;
	}

	public void setEmp_status(String emp_status) {
		this.emp_status = emp_status;
	}

	public int getMon_income() {
		return mon_income;
	}

	public void setMon_income(int mon_income) {
		this.mon_income = mon_income;
	}

	public String getAdd_info() {
		return add_info;
	}

	public void setAdd_info(String add_info) {
		this.add_info = add_info;
	}	
	
}
