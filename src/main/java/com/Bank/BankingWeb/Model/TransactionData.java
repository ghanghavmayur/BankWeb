package com.Bank.BankingWeb.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.ManyToOne;

@Entity
public class TransactionData {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int transactionId;
    private int senderAccNumber;
    private int receiverAccNumber;
    private int amount;
    private String transactionDate;

    @ManyToOne
    private UserBanking user; // Foreign key to link with UserBanking

    public TransactionData() {}

    public TransactionData(int senderAccNumber, int receiverAccNumber, int amount, String transactionDate) {
        this.senderAccNumber = senderAccNumber;
        this.receiverAccNumber = receiverAccNumber;
        this.amount = amount;
        this.transactionDate = transactionDate;
    }

    // Getters and Setters
    public int getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(int transactionId) {
        this.transactionId = transactionId;
    }

    public int getSenderAccNumber() {
        return senderAccNumber;
    }

    public void setSenderAccNumber(int senderAccNumber) {
        this.senderAccNumber = senderAccNumber;
    }

    public int getReceiverAccNumber() {
        return receiverAccNumber;
    }

    public void setReceiverAccNumber(int receiverAccNumber) {
        this.receiverAccNumber = receiverAccNumber;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getTransactionDate() {
        return transactionDate;
    }

    public void setTransactionDate(String transactionDate) {
        this.transactionDate = transactionDate;
    }
}
