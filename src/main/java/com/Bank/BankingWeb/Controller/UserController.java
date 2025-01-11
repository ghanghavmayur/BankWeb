//package com.Bank.BankingWeb.Controller;
//
//import java.text.SimpleDateFormat;
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.List;
//
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.Transaction;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.Bank.BankingWeb.Model.TransactionData;
//import com.Bank.BankingWeb.Model.UserBanking;
//import com.Bank.BankingWeb.Model.UserLoan;
//
//import jakarta.servlet.http.HttpSession;
//
//@Controller
//public class UserController {
//	
//	@Autowired
//	SessionFactory sf;
//	
//	@RequestMapping("/")
//	public String UserLogin() {
//		return "home";
//	}
//	
//	//----------------------------------Dashboard---------------------------------------------------------------------------
//	
//	@RequestMapping("dashlogin")
//	public String DashBoardLogin() {
//		return "DashBoardLoginPage";
//	}
//	
//	private List<String> getQuickLinks() {
//	    List<String> quickLinks = new ArrayList<>();
//	    quickLinks.add("Transfer Money");
//	    quickLinks.add("View Statements");
//	    quickLinks.add("Apply for Loan");
//	    return quickLinks;
//	}
//
//	
//
//	@RequestMapping("/dash")                                   /*"HttpSession"Stores user-specific
//	 															  data during a browser session.*/
//	public String DashBoardLoginDB(UserBanking user, Model model, HttpSession session) {
//	    Session ss = sf.openSession();				//The Model is an interface that represents a container for the data you want to display on the view.
//	    UserBanking dbuser = ss.get(UserBanking.class, user.getAcc_number());
//
//	    String page = "DashBoardLoginPage";
//	    String msg = null;
//	    if (dbuser != null) {
//	        if (user.getPassword().equals(dbuser.getPassword())) {
//	            // Store logged-in account number and balance in session
//	            session.setAttribute("loggedInAccount", dbuser.getAcc_number());//this is for storing account number in HTTP session and we are using it for transeferring the amount on "MoneyTransferPage"  
//	            session.setAttribute("accountBalance", dbuser.getBalance());//this is for Storing Balance in HTTP session and we are using it for transeferring the amount on "MoneyTransferPage"
//	            
//	            
//	            
//	            	/*The addAttribute method of 
//	            	  the Model is used to send data 
//	            	 (e.g., account number, balance) 
//	            	 from the controller to the view.*/
//	            model.addAttribute("accountNumber", dbuser.getAcc_number());// adding the user's account number to the model so it can be displayed on the frontend.
//	            model.addAttribute("balance", dbuser.getBalance());// adding the user's account balance to the model so it can be displayed on the frontend.
//	            model.addAttribute("availableBalance", dbuser.getBalance());// adding the user's account balance to the model so it can be displayed on the frontend.
//	            model.addAttribute("quickLinks", getQuickLinks());// adding the quick links to the model so it can be displayed on the frontend.
//	            page = "DashBoardPage";
//	        } else {
//	            msg = "Invalid Password";
//	        }
//	    } else {
//	        msg = "Invalid Account No";
//	    }
//	    model.addAttribute("msg", msg);
//	    return page;
//	}
//
//	
////	@RequestMapping("dashboard")
////	public String BankingDashBoard() {
////		return"DashBoardPage";
////	}
////	
//	
//	@RequestMapping("dashboard")
//	public String BankingDashBoard(Model model, HttpSession session) {
//	    // Retrieve logged-in account number from session
//	    Integer accountNumber = (Integer) session.getAttribute("loggedInAccount");
//
//	    if (accountNumber == null) {
//	        model.addAttribute("msg", "Session expired. Please log in again.");
//	        return "home"; // Redirect to login if session expired
//	    }
//
//	    // Open a Hibernate session to fetch user data
//	    Session s = sf.openSession();
//	    UserBanking dbuser = s.get(UserBanking.class, accountNumber);
//	    s.close();
//
//	    if (dbuser != null) {
//	        // Add necessary attributes to the model
//	        model.addAttribute("accountNumber", dbuser.getAcc_number());
//	        model.addAttribute("balance", dbuser.getBalance());
//	        model.addAttribute("availableBalance", dbuser.getBalance());
//	        model.addAttribute("quickLinks", getQuickLinks());
//	    } else {
//	        model.addAttribute("msg", "User data not found. Please log in again.");
//	        return "home"; // Redirect to login if user data is missing
//	    }
//
//	    return "DashBoardPage";
//	}
//
//	
//	//-----------------------------------------------------Loan----------------------------------------------------------------------
//	
//	
//	@RequestMapping("loanpage")
//	public String UserLoanPage() {
//		return "loan_form";
//	}	
//	
//	@RequestMapping("/loan")
//	public String UserLoanRequest(UserLoan abc, Model model, HttpSession session) {
//	    Session s = sf.openSession();
//	    Transaction t = s.beginTransaction();
//	    s.save(abc);
//	    t.commit();
//	    s.close();
//
//	    // Retrieve session data for the logged-in user
//	    Integer accountNumber = (Integer) session.getAttribute("loggedInAccount");
//	    Integer balance = (Integer) session.getAttribute("accountBalance");
//
//	    if (accountNumber != null && balance != null) {
//	        model.addAttribute("accountNumber", accountNumber);
//	        model.addAttribute("balance", balance);
//	        model.addAttribute("availableBalance", balance); // Assuming balance and availableBalance are the same
//	        model.addAttribute("quickLinks", getQuickLinks());
//	    } else {
//	        model.addAttribute("msg", "Session expired. Please log in again.");
//	        return "home"; // Redirect to login if session expired
//	    }
//
//	    return "DashBoardPage";
//	}
//
//	
//	@RequestMapping("aboutus")
//	public String AboutUs() {
//		return "aboutuspage";
//	}
//	
//	
//	
//	//---------------------------------------------------Transfer Money-----------------------------------------------------------------
//	
//	@RequestMapping("moneytransfer")
//	public String TransferMoney() {
//		return "MoneyTransferPage";
//	}
//	
////	@RequestMapping("/transfer")
////	public String transferMoney(int receiverAccNumber, int amount, Model model, HttpSession session) {
////	    // Get sender account number from session
////	    Integer senderAccNumber = (Integer) session.getAttribute("loggedInAccount");
////
////	    if (senderAccNumber == null) {
////	        model.addAttribute("msg", "Session expired. Please log in again.");
////	        return "home";
////	    }
////
////	    Session s = sf.openSession();
////	    Transaction t = s.beginTransaction();
////
////	    // Fetch sender and receiver accounts
////	    UserBanking sender = s.get(UserBanking.class, senderAccNumber);
////	    UserBanking receiver = s.get(UserBanking.class, receiverAccNumber);
////
////	    String message;
////	    if (sender != null && receiver != null) {
////	        if (sender.getBalance() >= amount) {
////	            // Perform transaction
////	            sender.setBalance(sender.getBalance() - amount);
////	            receiver.setBalance(receiver.getBalance() + amount);
////	            s.update(sender);
////	            s.update(receiver);
////	            t.commit();
////
////	            // Update session attributes for the sender's updated balance
////	            session.setAttribute("accountBalance", sender.getBalance());
////
////	            message = "Transaction Successful!";
////	        } else {
////	            message = "Insufficient Balance!";
////	        }
////	    } else {
////	        message = "Invalid Account Details!";
////	    }
////
////	    s.close();
////	    model.addAttribute("msg", message);
////	    return "MoneyTransferPage"; // Redirect back to the transfer page with a message
////	}
//	
////	@RequestMapping("/transfer")
////	public String transferMoney(int receiverAccNumber, int amount, int pin, Model model, HttpSession session) {
////	    // Get sender account number from session
////	    Integer senderAccNumber = (Integer) session.getAttribute("loggedInAccount");
////
////	    if (senderAccNumber == null) {
////	        model.addAttribute("msg", "Session expired. Please log in again.");
////	        return "home";
////	    }
////	    
////	    // Check if the sender is trying to transfer money to their own account
////	    if (senderAccNumber == receiverAccNumber) {
////	        model.addAttribute("msg", "You cannot transfer money to your own account.");
////	        return "MoneyTransferPage"; // Return to the transfer page with an error message
////	    }
////
////	    Session s = sf.openSession();
////	    Transaction t = s.beginTransaction();
////
////	    // Fetch sender and receiver accounts
////	    UserBanking sender = s.get(UserBanking.class, senderAccNumber);
////	    UserBanking receiver = s.get(UserBanking.class, receiverAccNumber);
////
////	    String message;
////	    if (sender != null && receiver != null) {
////	        // Validate PIN
////	        if (sender.getPin() != pin) {
////	            message = "Invalid PIN. Transaction failed!";
////	        } else if (sender.getBalance() < amount) {
////	            message = "Insufficient Balance!";
////	        } else {
////	            // Perform transaction
////	            sender.setBalance(sender.getBalance() - amount);
////	            receiver.setBalance(receiver.getBalance() + amount);
////	            s.update(sender);
////	            s.update(receiver);
////	            t.commit();
////
////	            // Update session attributes for the sender's updated balance
////	            session.setAttribute("accountBalance", sender.getBalance());
////
////	            message = "Transaction Successful!";
////	        }
////	    } else {
////	        message = "Invalid Account Details!";
////	    }
////
////	    s.close();
////	    model.addAttribute("msg", message);
////	    return "MoneyTransferPage"; // Redirect back to the transfer page with a message
////	}
////	
//	
//	@RequestMapping("/transfer")
//	public String transferMoney(int receiverAccNumber, int amount, int pin, Model model, HttpSession session) {
//	    Integer senderAccNumber = (Integer) session.getAttribute("loggedInAccount");
//
//	    if (senderAccNumber == null) {
//	        model.addAttribute("msg", "Session expired. Please log in again.");
//	        return "home";
//	    }
//
//	    if (senderAccNumber == receiverAccNumber) {
//	        model.addAttribute("msg", "You cannot transfer money to your own account.");
//	        return "MoneyTransferPage";
//	    }
//
//	    Session s = sf.openSession();
//	    Transaction t = s.beginTransaction();
//
//	    UserBanking sender = s.get(UserBanking.class, senderAccNumber);
//	    UserBanking receiver = s.get(UserBanking.class, receiverAccNumber);
//
//	    String message;
//	    if (sender != null && receiver != null) {
//	        if (sender.getPin() != pin) {
//	            message = "Invalid PIN. Transaction failed!";
//	        } else if (sender.getBalance() < amount) {
//	            message = "Insufficient Balance!";
//	        } else {
//	            // Perform transaction
//	            sender.setBalance(sender.getBalance() - amount);
//	            receiver.setBalance(receiver.getBalance() + amount);
//	            s.update(sender);
//	            s.update(receiver);
//
//	            // Record the transaction
//	            String currentDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
//	            TransactionData transaction = new TransactionData(senderAccNumber, receiverAccNumber, amount, currentDate);
//	            s.save(transaction);
//
//	            t.commit();
//
//	            session.setAttribute("accountBalance", sender.getBalance());
//	            message = "Transaction Successful!";
//	        }
//	    } else {
//	        message = "Invalid Account Details!";
//	    }
//
//	    s.close();
//	    model.addAttribute("msg", message);
//	    return "MoneyTransferPage";
//	}
//
//
//	//--------------------------------------View Statements---------------------------------------------------------------------
//
//	@RequestMapping("statement")
//	public String ShowStatement() {
//		return"viewStatementsPage";
//	}
//	
//	@RequestMapping("/statements")
//	public String ShowStatements(Model model, HttpSession session) {
//	    Integer accountNumber = (Integer) session.getAttribute("loggedInAccount");
//
//	    if (accountNumber == null) {
//	        model.addAttribute("msg", "Session expired. Please log in again.");
//	        return "home";
//	    }
//
//	    Session s = sf.openSession();
//	    List<TransactionData> transactions = s.createQuery(
//	            "FROM TransactionData WHERE senderAccNumber = :accNumber OR receiverAccNumber = :accNumber ORDER BY transactionId DESC",
//	            TransactionData.class)
//	            .setParameter("accNumber", accountNumber)
//	           // .setMaxResults(10)
//	            .getResultList();
//	    s.close();
//
//	    model.addAttribute("transactions", transactions);
//	    return "viewStatementsPage";
//	}
//
//	
//}


// UserController.java
package com.Bank.BankingWeb.Controller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.hibernate.Transaction;


import com.Bank.BankingWeb.Model.TransactionData;
import com.Bank.BankingWeb.Model.UserBanking;
import com.Bank.BankingWeb.Model.UserLoan;
import com.Bank.BankingWeb.Service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public String UserLogin() {
        return "home";
    }
    
    @RequestMapping("aboutus")
    public String  AboutUs() {
    	return "aboutuspage";
    }

    @RequestMapping("/dashlogin")
    public String DashBoardLogin() {
        return "DashBoardLoginPage";
    } 

    @RequestMapping("/dash")
    public String DashBoardLoginDB(UserBanking user, Model model, HttpSession session) {
        UserBanking dbuser = userService.loginUser(user.getAcc_number(), user.getPassword());
        if (dbuser != null) {
            session.setAttribute("loggedInAccount", dbuser.getAcc_number());
            session.setAttribute("accountBalance", dbuser.getBalance());

            model.addAttribute("accountNumber", dbuser.getAcc_number());
            model.addAttribute("balance", dbuser.getBalance());
            return "DashBoardPage";
        } else {
            model.addAttribute("msg", "Invalid Account No or Password");
            return "DashBoardLoginPage";
        }
    }
    
    
    
	@RequestMapping("dashboard")
	public String BankingDashBoard(Model model, HttpSession session) {
	    // Retrieve logged-in account number from session
	    Integer accountNumber = (Integer) session.getAttribute("loggedInAccount");

	    if (accountNumber == null) {
	        model.addAttribute("msg", "Session expired. Please log in again.");
	        return "home"; // Redirect to login if session expired
	    }

	    // Open a Hibernate session to fetch user data
	    Session s = sf.openSession();
	    UserBanking dbuser = s.get(UserBanking.class, accountNumber);
	    s.close();

	    if (dbuser != null) {
	        // Add necessary attributes to the model
	        model.addAttribute("accountNumber", dbuser.getAcc_number());
	        model.addAttribute("balance", dbuser.getBalance());
	        model.addAttribute("availableBalance", dbuser.getBalance());
//	        model.addAttribute("quickLinks", getQuickLinks());
	    } else {
	        model.addAttribute("msg", "User data not found. Please log in again.");
	        return "home"; // Redirect to login if user data is missing
	    }

	    return "DashBoardPage";
	}

    
	@RequestMapping("moneytransfer")
	public String TransferMoney() {
		return "MoneyTransferPage";
	}

//    @RequestMapping("/transfer")
//    public String transferMoney(int receiverAccNumber, int amount, int pin, Model model, HttpSession session) {
//        Integer senderAccNumber = (Integer) session.getAttribute("loggedInAccount");
//        if (senderAccNumber == null) {
//            model.addAttribute("msg", "Session expired. Please log in again.");
//            return "home";
//        }
//
//        String message = userService.transferMoney(senderAccNumber, receiverAccNumber, amount, pin);
//        session.setAttribute("accountBalance", userService.getStatements(senderAccNumber));
//        model.addAttribute("msg", message);
//        return "MoneyTransferPage";
//    }
//    
	
	
	@RequestMapping("/transfer")
	public String transferMoney(int receiverAccNumber, int amount, int pin, Model model, HttpSession session) {
	    Integer senderAccNumber = (Integer) session.getAttribute("loggedInAccount");
	    if (senderAccNumber == null) {
	        model.addAttribute("msg", "Session expired. Please log in again.");
	        return "home";
	    }

	    String message = userService.transferMoney(senderAccNumber, receiverAccNumber, amount, pin);
	    
	    // Fetch the updated UserBanking object to get the updated balance
	    UserBanking sender = userService.getUserByAccountNumber(senderAccNumber);
	    
	    // Update the session with the new balance
	    session.setAttribute("accountBalance", sender.getBalance());
	    model.addAttribute("msg", message);
	    return "MoneyTransferPage";
	}

	
	@RequestMapping("loanpage")
	public String UserLoanPage() {
		return "loan_form";
	}
    @Autowired
    SessionFactory sf;
    
	@RequestMapping("/loan")
	public String UserLoanRequest(UserLoan abc, Model model, HttpSession session) {
	    Session s = sf.openSession();
	    Transaction t = s.beginTransaction();

	    // Retrieve the logged-in account number from session
	    Integer accountNumber = (Integer) session.getAttribute("loggedInAccount");

	    if (accountNumber == null) {
	        model.addAttribute("msg", "Session expired. Please log in again.");
	        return "home"; // Redirect to login page if session is expired
	    }

	    // Set account number for the loan
	    abc.setAccNumber(accountNumber);

	    // Save loan details
	    s.save(abc);
	    t.commit();
	    s.close();

	    // Retrieve updated account balance and add attributes to the model
	    Integer balance = (Integer) session.getAttribute("accountBalance");
	    model.addAttribute("accountNumber", accountNumber);
	    model.addAttribute("balance", balance);
	    model.addAttribute("availableBalance", balance); // Assuming balance and availableBalance are the same
//	    model.addAttribute("quickLinks", getQuickLinks());
	    model.addAttribute("msg", "Loan application submitted successfully!");

	    return "DashBoardPage";
	}

    @RequestMapping("/statements")
    public String ShowStatements(Model model, HttpSession session) {
        Integer accountNumber = (Integer) session.getAttribute("loggedInAccount");
        if (accountNumber == null) {
            model.addAttribute("msg", "Session expired. Please log in again.");
            return "home";
        }

        List<TransactionData> transactions = userService.getStatements(accountNumber);
        model.addAttribute("transactions", transactions);
        return "viewStatementsPage";
    }
}
