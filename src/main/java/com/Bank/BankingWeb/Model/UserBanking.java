package com.Bank.BankingWeb.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class UserBanking {
	
	@Id
	int acc_number;
	String password;
	int balance;
	int pin;
	
	public UserBanking() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserBanking(int acc_number, String password, int balance, int pin) {
		super();
		this.acc_number = acc_number;
		this.password = password;
		this.balance = balance;
		this.pin = pin;
	}

	@Override
	public String toString() {
		return "UserBanking [acc_number=" + acc_number + ", password=" + password + ", balance=" + balance + ", pin="
				+ pin + "]";
	}

	public int getAcc_number() {
		return acc_number;
	}

	public void setAcc_number(int acc_number) {
		this.acc_number = acc_number;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	public int getPin() {
		return pin;
	}

	public void setPin(int pin) {
		this.pin = pin;
	}
	
	
	
}
