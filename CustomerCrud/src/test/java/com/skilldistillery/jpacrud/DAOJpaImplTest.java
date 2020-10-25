//package com.skilldistillery.jpacrud;
//
//import static org.junit.jupiter.api.Assertions.assertEquals;
//import static org.junit.jupiter.api.Assertions.assertNull;
//
//import org.junit.jupiter.api.AfterAll;
//import org.junit.jupiter.api.AfterEach;
//import org.junit.jupiter.api.BeforeAll;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.DisplayName;
//import org.junit.jupiter.api.Test;
//
//import com.skilldistillery.jpacrud.data.CustomerDAOJpaImpl;
//import com.skilldistillery.jpacrud.entities.Customer;
//
//class DAOJpaImplTest {
//	private static CustomerDAOJpaImpl djit; 
//	private Customer c;
//	
//	@BeforeAll
//	static void setUpBeforeClass() throws Exception {
//		djit = new CustomerDAOJpaImpl();
//	}
//
//	@AfterAll
//	static void tearDownAfterClass() throws Exception {
//		djit = null;
//	}
//
//	@BeforeEach
//	void setUp() throws Exception {
//		if(c == null) {
//			c = new Customer(12, "Douglas", "Sigmon", "D@gm.com", "123 street", "1234567890");
//		}
//	}
//
//	@AfterEach
//	void tearDown() throws Exception {
//		if(c != null) {
//			c = null;
//		}
//	}
//
//	@Test
//	@DisplayName("create customer works")
//	void test1() {
//		djit.createCustomer(c);
//		assertEquals("Douglas", c.getFirstName());
//		assertEquals("Sigmon", c.getLastName());
//	}
//	@Test
//	@DisplayName("test find by ID ")
//	void test2() {
//		djit.findById(1).getFirstName();
//		assertEquals("Douglas", djit.findById(1).getFirstName() );
//	}
//	@Test
//	@DisplayName("test delete ")
//	void test3() {
//		djit.deleteCustomer(12);
//		assertNull(djit.findById(12));
//	}
//	@Test
//	@DisplayName("test update customer email by phone number")
//	void test4() {
//		djit.updateEmailByPhone("updatedEmail@SD.com", "1234567890");
//		assertEquals("updatedEmail@SD.com", c.getEmail());
//	}
//
//}
