package com.Bank.BankingWeb.Controller;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Bank.BankingWeb.Model.UserBanking;
import com.Bank.BankingWeb.Model.UserLoan;
import com.Bank.BankingWeb.Model.UserLogin ;

@Controller
public class UserController {
	
	@Autowired
	SessionFactory sf;
	
	@RequestMapping("/")
	public String UserLogin() {
		return "home";
	}
	
	//dashboard
	
	@RequestMapping("dashlogin")
	public String DashBoardLogin() {
		return "DashBoardLoginPage";
	}
	
	private List<String> getQuickLinks() {
	    List<String> quickLinks = new ArrayList<>();
	    quickLinks.add("Transfer Money");
	    quickLinks.add("View Statements");
	    quickLinks.add("Apply for Loan");
	    return quickLinks;
	}

	
	@RequestMapping("/dash")
	public String DashBoardLoginDB(UserBanking user, Model model) {
		
		Session ss=sf.openSession();
		UserBanking dbuser = ss.get(UserBanking.class, user.getAcc_number());
		
		String page = "DashBoardLoginPage";
        String msg = null;
        if(dbuser !=null) {
        	if(user.getPassword().equals(dbuser.getPassword())) {
                model.addAttribute("accountNumber", dbuser.getAcc_number());
                model.addAttribute("balance", dbuser.getBalance());
                model.addAttribute("availableBalance", dbuser.getBalance()); 
                model.addAttribute("quickLinks", getQuickLinks());
        		page = "DashBoardPage";
        	} else {
        		msg = "Invalid Password";
        	}
        } else {
        	msg = "Invalid Account No";
        }
        model.addAttribute("msg",msg);
        return page;
	}
	
	@RequestMapping("dashboard")
	public String BankingDashBoard() {
		return"DashBoardPage";
	}
	
	
	@RequestMapping("loanpage")
	public String UserLoanPage() {
		return "loan_form";
	}
	
	@RequestMapping("/loan")
	public String UserLoanRequest(UserLoan abc,Model model) {
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		s.save(abc);
		t.commit();
		s.close();
		
		return "DashBoardPage";
	}
	
	@RequestMapping("aboutus")
	public String AboutUs() {
		return "aboutuspage";
	}
	
}
