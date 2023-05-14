package com.Servlet;

import com.Servlet.Dao.RegisterDao;
import com.Servlet.Models.User;
import com.Servlet.utils.Hibernate;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.hibernate.Session;

import java.io.IOException;
import java.util.Random;
import java.util.UUID;

@WebServlet(name = "Register", value = "/register")
public class Register extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        RequestDispatcher requestDispatcher=request.getRequestDispatcher("/pages/register.jsp");
        requestDispatcher.forward(request,response);

    }

    public  void  doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Session session=Hibernate.getSessionFactory().openSession();
//        System.out.println("hellos");
        String name=request.getParameter("name");
        String userName=request.getParameter("username");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String role=request.getParameter("role");
        UUID uuid= UUID.randomUUID();
        String id=uuid.toString();
        User user=null;
        if(role.equals("Student"))
        {
            user=new User(id,name,email,password,userName,User.Role.STUDENT);

        } else if (role.equals("Teacher")) {
            user=new User(id,name,email,password,userName,User.Role.TEACHER);


        }

        RegisterDao registerDao=new RegisterDao();

        try{
            registerDao.saveUser(user);

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        RequestDispatcher requestDispatcher=request.getRequestDispatcher("/pages/login.jsp");
        requestDispatcher.forward(request,response);
    }

}
