// UserService.java
package com.Bank.BankingWeb.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Bank.BankingWeb.Model.Contact;
import com.Bank.BankingWeb.Model.TransactionData;
import com.Bank.BankingWeb.Model.UserBanking;
import com.Bank.BankingWeb.Model.UserLoan;
import com.Bank.BankingWeb.Repository.UserRepository;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public UserBanking loginUser(Integer accNumber, String password) {
        UserBanking user = userRepository.getUserByAccountNumber(accNumber);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }

//    public String transferMoney(Integer senderAccNumber, Integer receiverAccNumber, Integer amount, Integer pin) {
//        UserBanking sender = userRepository.getUserByAccountNumber(senderAccNumber);
//        UserBanking receiver = userRepository.getUserByAccountNumber(receiverAccNumber);
//
//        if (sender == null || receiver == null) {
//            return "Invalid Account Details!";
//        }
//        if (!pin.equals(sender.getPin())) {  // Use equals for comparing Integer objects
//            return "Invalid PIN. Transaction failed!";
//        }
//        if (sender.getBalance() < amount) {
//            return "Insufficient Balance!";
//        }
//
//        sender.setBalance(sender.getBalance() - amount);
//        receiver.setBalance(receiver.getBalance() + amount);
//        userRepository.updateUser(sender);
//        userRepository.updateUser(receiver);
//
//        String currentDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
//        TransactionData transaction = new TransactionData(senderAccNumber, receiverAccNumber, amount, currentDate);
//        userRepository.saveTransaction(transaction);
//
//        return "Transaction Successful!";
//    }
    
    public String transferMoney(Integer senderAccNumber, Integer receiverAccNumber, Integer amount, Integer pin) {
        UserBanking sender = userRepository.getUserByAccountNumber(senderAccNumber);
        UserBanking receiver = userRepository.getUserByAccountNumber(receiverAccNumber);

        if (sender == null || receiver == null) {
            return "Invalid Account Details!";
        }
        if (senderAccNumber.equals(receiverAccNumber)) { // Check if sender and receiver accounts are the same
            return "Sender and Receiver account numbers cannot be the same!";
        }
        if (!pin.equals(sender.getPin())) { // Use equals for comparing Integer objects
            return "Invalid PIN. Transaction failed!";
        }
        if (sender.getBalance() < amount) {
            return "Insufficient Balance!";
        }
        if (amount == 0) {
        	return "Not Valid";
        }

        sender.setBalance(sender.getBalance() - amount);
        receiver.setBalance(receiver.getBalance() + amount);
        userRepository.updateUser(sender);
        userRepository.updateUser(receiver);

        String currentDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        TransactionData transaction = new TransactionData(senderAccNumber, receiverAccNumber, amount, currentDate);
        userRepository.saveTransaction(transaction);

        return "Transaction Successful!";
    }


    public List<TransactionData> getStatements(Integer accNumber) {
        return userRepository.getUserTransactions(accNumber);
    }
    
    public void applyForLoan(UserLoan loan) {
        userRepository.saveLoanRequest(loan);
    }
    
    public UserBanking getUserByAccountNumber(Integer accNumber) {
        return userRepository.getUserByAccountNumber(accNumber);
    }
    

    public void saveContactInquiry(String name, String email, String message) {
        // Create a Contact object and populate it with data
        Contact contact = new Contact(name, email, message);
        // Call the UserRepository method to save the contact
        userRepository.saveContact(contact);
    }
}
