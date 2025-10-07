package SpringCore_Customer;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="customer_details") 
@Component 
public class Customer {
	
	
	 @Id
	 private int customerID;
	 private String customerName;
	 private int balance;
	 
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public Customer(int customerID, String customerName, int balance) {
		super();
		this.customerID = customerID;
		this.customerName = customerName;
		this.balance = balance;
	}
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Customer [customerID=" + customerID + ", customerName=" + customerName + ", balance=" + balance + "]";
	}
	
	

}
