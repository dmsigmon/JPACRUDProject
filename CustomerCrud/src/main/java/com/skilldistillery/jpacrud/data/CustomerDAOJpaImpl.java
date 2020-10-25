package com.skilldistillery.jpacrud.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Customer;

@Transactional
@Service
public class CustomerDAOJpaImpl implements CustomerDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Customer findById(int id) {
		Customer cust = em.find(Customer.class, id);
		em.close();
		return cust;
	}
	@Override
	public void updateCustomerAddress(String address) {
		String jpql = "UPDATE Customer c SET address = :address";
		em.getTransaction().begin();
		em.createQuery(jpql)
					.setParameter("address", address)
					.executeUpdate();
		// sync up:
		em.flush();
		// let's assume all will go well, and not forget to Commit our work
		em.getTransaction().commit();
		
	}
	@Override
	public Customer getCustomerAddressByName(String fName, String lName) {
		Customer custAddress = null;
		String jpql = "SELECT c.address FROM Customer c WHERE c.firstName = :fName AND c.lastName = :lName";

		try {
			custAddress = em.createQuery(jpql, Customer.class)
							.setParameter("fName", fName)
							.setParameter("lName", lName)
							.getSingleResult();
		} catch (NoResultException e) {
			e.printStackTrace();
		} catch (NonUniqueResultException e) {
			e.printStackTrace();
		}
		return custAddress;
	}
	@Override
	public Customer createCustomer(Customer customer) {
	    em.persist(customer);
	    em.flush();
	    em.close();
	    return customer;
	  }
	

	@Override
	public void deleteCustomer(int id) {
		String jpql = "DELETE FROM Customer c WHERE c.id = :id";
		id = em.createQuery(jpql)
				.setParameter("id", id)
				.executeUpdate();
		em.flush();
		em.close();
	}
	public void updateEmailByPhone(String email, String phone) {
		String jpql = "UPDATE Customer cust SET email = :email WHERE phone = :phone";
		em.createQuery(jpql).setParameter("email", email)
							.setParameter("phone", phone)
							.executeUpdate();
		// sync up:
		em.flush();
		em.close();
	}


	 
	
}
