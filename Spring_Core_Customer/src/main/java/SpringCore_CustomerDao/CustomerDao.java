package SpringCore_CustomerDao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

import SpringCore_Customer.Customer;

public class CustomerDao {

	private HibernateTemplate hibernateTemplate;

	@Transactional
	public int insert(Customer customer) {

		Integer i = (Integer) this.hibernateTemplate.save(customer);
		return i;
	}

	public Customer getcustomer(int customerID) {
		Customer customer = this.hibernateTemplate.get(Customer.class, customerID);
		return customer;

	}

	public List<Customer> getAllCustomers() {
		List<Customer> customer = this.hibernateTemplate.loadAll(Customer.class);
		return customer;

	}

	@Transactional
	public void deleteCustomer(int customerId) {
		Customer customer = this.hibernateTemplate.get(Customer.class, customerId);

	}
    
	@Transactional
	public void updateCustomer(Customer customer) {
		this.hibernateTemplate.update(customer);
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

}
