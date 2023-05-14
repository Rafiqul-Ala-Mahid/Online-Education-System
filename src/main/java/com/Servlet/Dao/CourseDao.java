package com.Servlet.Dao;

import com.Servlet.Models.Course;
import com.Servlet.Models.User;
import com.Servlet.utils.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import com.Servlet.Models.User.Role;


import java.util.List;
import java.util.UUID;

public class CourseDao {
    public List<User> getTeachers() throws  Exception
    {
        Transaction transaction = null;

        try(
                Session session = Hibernate.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();



            Query<User> query=  session.createQuery("from User  where role=:teacher").setParameter("teacher", Role.TEACHER);

            List<User> teachers=query.list();
//            session.save(user);
//            System.out.println(user);
            return teachers;


        }}
    public void  saveCourse(String title,String summary, String teacherId){
        Transaction transaction = null;

        try(
                Session session = Hibernate.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();


            String uuid=UUID.randomUUID().toString();
            Course course=new Course(uuid,title,summary,teacherId);

            session.save(course);
            System.out.println("hello mothberfucker");
            transaction.commit();



        }
    }

}
