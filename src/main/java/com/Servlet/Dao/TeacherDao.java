package com.Servlet.Dao;

import com.Servlet.Models.Course;
import com.Servlet.Models.User;
import com.Servlet.utils.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class TeacherDao {

    public List<Course> getCourses(String id) throws  Exception {
        Transaction transaction = null;

        try (
                Session session = Hibernate.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            id =" "+id;

            List<Course> courses = (List<Course>) session.createQuery("select c from Course c where c.teacher=:id").setParameter("id", id).list();


            for (Course c:courses
                 ) {
                System.out.println(c.getTitle());
            }
            return courses;


        }
    }
}
