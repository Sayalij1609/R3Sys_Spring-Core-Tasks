package com.r3sys.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.r3sys.customer.Customer;
import com.r3sys.dao.CustomerDao;



@Controller
public class HomeController {

	ApplicationContext context = new ClassPathXmlApplicationContext("Config.xml");
	CustomerDao customerDao = context.getBean("customerDao", CustomerDao.class);
	Customer c = context.getBean("customer", Customer.class);

	// Open Login Page
	@RequestMapping("/")
	public String welcome() {
		System.out.println("Opening index page..");
		return "index";
	}

	@RequestMapping(path = "/AdminLogin", method = RequestMethod.POST)
	public String AdminLogin(HttpServletRequest request) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		if (email.equals("admin@gmail.com") && password.equals("admin")) {

			return "accopen";
		}

		else {
			return "index";
		}

	}

	// Open Account page
	@RequestMapping("/accopen")
	public String accopen() {
		System.out.println("Opening Account  page..");
		return "accopen";
	}

	@RequestMapping(path = "/NewAccount", method = RequestMethod.POST)
	public String NewAccount(HttpServletRequest request) {

		c.setAno(Integer.parseInt(request.getParameter("ano")));
		c.setEmail(request.getParameter("email"));
		c.setPassword(request.getParameter("password"));
		c.setAname(request.getParameter("aname"));
		c.setAmob(request.getParameter("amob"));
		c.setAbal(Integer.parseInt(request.getParameter("abal")));

		int i = customerDao.insert(c);

		if (i > 0) {
			return "redirect:/show";
		}

		else {
			return "index";
		}
	}

	// open deposit Page DepositMoney

	@RequestMapping("/deposit")
	public String deposit() {
		System.out.println("Opening Account  page..");
		return "deposit";
	}

	@RequestMapping(path = "/DepositMoney", method = RequestMethod.POST)
	public String DepositMoney(HttpServletRequest request) {
		int ano = Integer.parseInt(request.getParameter("ano"));
		int amt = Integer.parseInt(request.getParameter("amt"));

		if (amt > 0) {
			c = customerDao.getcustomer(ano);
			amt = c.getAbal() + amt;
			c.setAbal(amt);
			customerDao.updateCustomer(c);
			return "redirect:/show";

		}

		else {
			return "deposit";
		}

	}

	// Open Withdraw Page

	@RequestMapping("/withdraw")
	public String withdraw() {
		System.out.println("Opening Account  page..");
		return "withdraw";
	}

	@RequestMapping(path = "/WithdrawMoney", method = RequestMethod.POST)
	public String WithdrawMoney(HttpServletRequest request) {
		int ano = Integer.parseInt(request.getParameter("ano"));
		int amt = Integer.parseInt(request.getParameter("amt"));

		if (amt > 0) {
			c = customerDao.getcustomer(ano);
			if (c.getAbal() >= amt) {

				amt = c.getAbal() - amt;
				c.setAbal(amt);
				customerDao.updateCustomer(c);
				return "redirect:/show";
			}

			else {
				return "withdraw";
			}

		}

		else {
			return "withdraw";
		}

	}

	// View all page
	@RequestMapping("/show")
	public String viewall(Model m){
		
		List<Customer> allCustomers = customerDao.getAllCustomers();
		m.addAttribute("allCustomers", allCustomers);
		return "show";
	
	}
	
	@RequestMapping(path="/delete",method=RequestMethod.GET)
	public String deleteAccount(HttpServletRequest request){
		int ano = Integer.parseInt(request.getParameter("ano"));
		customerDao.deleteCustomer(ano);
		return "redirect:/show";
	}
	
	@RequestMapping(path="/search",method=RequestMethod.GET)
	public String opensearch(Model m , HttpServletRequest request){
		String ano = request.getParameter("ano");
		if(ano!=null){
			c = customerDao.getcustomer(Integer.parseInt(ano));
			m.addAttribute("customer", c);
		}
		
		else{
			m.addAttribute("customer", null);
		}
		
		return "search";
	}

}


























