package com.Servlet.Dao;

import com.Servlet.Models.Course;
import com.Servlet.Models.User;
import com.Servlet.utils.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class StudentDao {
    public List<User>  getStudents(String id) throws  Exception {
        Transaction transaction = null;

        try (
                Session session = Hibernate.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();



            List<User> users=(List<User>) session.createQuery("from User where userId in (select studentId from StudentCourse where courseId=:id)").setParameter("id",id).list();

            System.out.println(users);
            return users;


        }
    }
}
