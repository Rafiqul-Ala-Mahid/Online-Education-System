package com.Servlet.utils;

import com.Servlet.Models.Course;
import com.Servlet.Models.StudentCourse;
import com.Servlet.Models.User;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import java.util.Properties;

public class Hibernate {

        private static SessionFactory sessionFactory;

        public static SessionFactory getSessionFactory() {
            if (sessionFactory == null) {
                try {
                    Configuration configuration = new Configuration();
                    Properties settings = new Properties();
                    settings.put(Environment.DRIVER, "com.mysql.jdbc.Driver");
                    settings.put(Environment.URL, "jdbc:mysql://localhost:3306/Online_education?useSSL=false");
                    settings.put(Environment.USER, "root");
                    settings.put(Environment.PASS, "");
                    settings.put(Environment.DIALECT, "org.hibernate.dialect.MySQL8Dialect");
                    settings.put(Environment.FORMAT_SQL, "true");
                    settings.put(Environment.SHOW_SQL, "true");

                    settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");

                    settings.put(Environment.HBM2DDL_AUTO, "update");
//                    settings.put(Environment.CACHE_REGION_FACTORY,"org.hibernate.cache.ehcache.EhCacheRegionFactory");
//                    System.out.println("dhaldhsld");
                    configuration.setProperties(settings);
                    configuration.addAnnotatedClass(User.class);
                    configuration.addAnnotatedClass(Course.class);
//                    configuration.addAnnotatedClass(Department.class);
                    configuration.addAnnotatedClass(StudentCourse.class);
//                    configuration.addAnnotatedClass(Teacher.class);
//                    configuration.addAnnotatedClass(Registration.class);




                    ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
                    sessionFactory = configuration.buildSessionFactory(serviceRegistry);

                    return sessionFactory;

                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return sessionFactory;
        }

}
