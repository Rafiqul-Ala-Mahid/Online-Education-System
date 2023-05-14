package com.Servlet.Dao;

import com.Servlet.Models.User;
import com.Servlet.utils.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class RegisterDao {

    public void saveUser(User user) throws Exception {
        Transaction transaction=null;

        try(Session session = Hibernate.getSessionFactory().openSession()) {
            transaction=session.beginTransaction();

            session.save(user);
            transaction.commit();


        }



    }

}
