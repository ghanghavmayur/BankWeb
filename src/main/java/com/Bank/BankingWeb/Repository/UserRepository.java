// UserRepository.java
package com.Bank.BankingWeb.Repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Bank.BankingWeb.Model.Contact;
import com.Bank.BankingWeb.Model.TransactionData;
import com.Bank.BankingWeb.Model.UserBanking;
import com.Bank.BankingWeb.Model.UserLoan;

@Repository
public class UserRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public UserBanking getUserByAccountNumber(Integer accNumber) {
        try (Session session = sessionFactory.openSession()) {
            return session.get(UserBanking.class, accNumber);
        }
    }

    public void saveTransaction(TransactionData transaction) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            session.save(transaction);
            session.getTransaction().commit();
        }
    }

    public void updateUser(UserBanking user) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            session.update(user);
            session.getTransaction().commit();
        }
    }

    public List<TransactionData> getUserTransactions(Integer accNumber) {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery(
                    "FROM TransactionData WHERE senderAccNumber = :accNumber OR receiverAccNumber = :accNumber ORDER BY transactionId DESC",
                    TransactionData.class)
                    .setParameter("accNumber", accNumber)
                    .getResultList();
        }
    }
    
    public void saveLoanRequest(UserLoan loan) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            session.save(loan);
            session.getTransaction().commit();
        }
    }
    	
    
    public void saveContact(Contact contact) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            session.save(contact);
            session.getTransaction().commit();
        }
    }
}