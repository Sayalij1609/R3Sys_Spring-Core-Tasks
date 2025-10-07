package Day3_SpringCore_Model.Spring_Core_Customer;

import java.util.List;
import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import SpringCore_Customer.Customer;
import SpringCore_CustomerDao.CustomerDao;

/**
 * Hello world!
 *
 */
public class App {
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");

		CustomerDao customerDao = context.getBean("customerDao", CustomerDao.class);

		Scanner sc = new Scanner(System.in);
		boolean go = true;

		while (go) {

			
			System.out.println("*************************** Menu **************************\n");
			System.out.println("1.Add new Customer \n2.Display details of Single Customer \n3.Display Details of all the customers \n4.Delete Student \n5.Update Details of the Student \n6.Exit ");
			System.out.println("Enter Your Choice : ");
			
			try {

				int a = Integer.parseInt(sc.nextLine());

				switch (a) {

				case 1:

					System.out.println("Enter user id : ");
					int cid = Integer.parseInt(sc.nextLine());

					System.out.println("Enter Customer Name : ");
					String name = sc.nextLine();

					System.out.println("Enter Balance : ");
					int balance = Integer.parseInt(sc.nextLine());

					Customer c = context.getBean("customer", Customer.class);
					c.setCustomerID(cid);
					c.setCustomerName(name);
					c.setBalance(balance);

					int r = customerDao.insert(c);
					System.out.println(r + "customer added Successfully");
					break;

				case 2:

					System.out.println("Enter user id : ");
					int uid = Integer.parseInt(sc.nextLine());

					Customer customer = customerDao.getcustomer(uid);
					System.out.println("Customer Id : " + customer.getCustomerID());
					System.out.println("Customer Name : " + customer.getCustomerName());
					System.out.println("Customer Balance : " + customer.getBalance());
					System.out.println("The details show successfully");
					break;

				case 3:

					List<Customer> allcustomer = customerDao.getAllCustomers();
					for (Customer cs : allcustomer) {

						System.out.println("\nCustomer id : " + cs.getCustomerID());
						System.out.println("Custommer name : " + cs.getCustomerName());
						System.out.println("Customer Balance : " + cs.getBalance());

					}
					System.out.println("The details show successfully");
					break;

				case 4:

					System.out.println("Enter User Id : ");
					int id = Integer.parseInt(sc.nextLine());
					customerDao.deleteCustomer(id);
					System.out.println("The Customer details delete Succesfully ");
					break;

				case 5:

					System.out.println("Enter User id : ");
					int csid = Integer.parseInt(sc.nextLine());
					Customer csobj = customerDao.getcustomer(csid);
					System.out.println("Customer Id : " + csobj.getCustomerID());
					System.out.println("Customer Name : " + csobj.getCustomerName());
					System.out.println("Customer Balance : " + csobj.getBalance());

					System.out.println("Enter Which Parameter do you want to update ?");
					System.out.println("************************** MENU *****************************");
					System.out.println("1.Customer Name \n2.Customer Balance");
					int choice = Integer.parseInt(sc.nextLine());

					switch (choice) {

					case 1:

						System.out.println("Enter Updated User Name : ");
						String cname = sc.nextLine();
						csobj.setCustomerName(cname);
						customerDao.updateCustomer(csobj);
						break;

					case 2:
						System.out.println("Enter User Balance : ");
						int b = Integer.parseInt(sc.nextLine());
						csobj.setBalance(b);
						customerDao.updateCustomer(csobj);
						break;

					}
					System.out.println("Value updated succesfully");
					break;

				case 6:
					System.out.println("Exit");
					go = false;
					break;

				}

			} catch (Exception e) {
				System.out.println("Invalid input******....please enter valid input ");
				System.err.println(e.getMessage());
			}

		}

	}
}
