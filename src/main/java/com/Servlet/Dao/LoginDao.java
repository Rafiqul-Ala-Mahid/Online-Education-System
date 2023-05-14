package com.Servlet.Dao;

import com.Servlet.Models.User;
import com.Servlet.utils.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class LoginDao {

    public  User getLoginData(String userName,String password) throws  Exception
    {
        Transaction transaction = null;

        try(
                Session session = Hibernate.getSessionFactory().openSession())

        {
            transaction = session.beginTransaction();

            User user= (User) session.createQuery("from User  where username=:userName").setParameter("userName",userName).uniqueResult();
            transaction.commit();

//            session.save(user);
//            System.out.println(user);
            return  user;




        }

    }


}
