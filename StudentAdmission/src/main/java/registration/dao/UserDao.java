package registration.dao;


import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.util.HibernateUtil;
import registration.model.User;

public class UserDao {
	
	public void saveUser (User user) {
		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()){
			//start a transaction
			transaction = session.beginTransaction();
			//save the user object
			session.save(user);
			//commit transaction
			transaction.commit();
		}catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}
	
	public boolean validate(String email, String password) {
		
		Transaction transaction = null;
		User user = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()){
			//start a transaction
			transaction = session.beginTransaction();
			//get the user object
			user = (User)session.createQuery("FROM User U WHERE U.email = :email").setParameter("email", email)
					.uniqueResult();
			if (user != null && user.getPassword().equals(password)) {
				return true;
			}
			//commit transaction
			transaction.commit();
		}catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return false;
	}

}
