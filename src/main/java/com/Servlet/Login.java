package com.Servlet;

import com.Servlet.Dao.LoginDao;
import com.Servlet.Models.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "Login", value = "/login")
public class Login extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        System.out.println("hellos");
        RequestDispatcher requestDispatcher=request.getRequestDispatcher("/pages/login.jsp");
        requestDispatcher.forward(request,response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        System.out.println("hellos");
        String username=request.getParameter("username");
        String password=request.getParameter("password");

        LoginDao loginDao=new LoginDao();
        User user=null;
        try{

             user =loginDao.getLoginData(username,password);
            System.out.println("hello how are you");
            if(user.getPassword().equals(password))
            {
                HttpSession session=request.getSession();
                session.setAttribute("login",user);
                String  role= String.valueOf(user.getRole());
                if(role.equals("STUDENT"))
                response.sendRedirect(request.getContextPath()+"/in/student");
                else if(role.equals("TEACHER"))
                    response.sendRedirect(request.getContextPath()+"/in/teacher");
                else
                    response.sendRedirect(request.getContextPath()+"/in/admin");


            }
            else {
                RequestDispatcher requestDispatcher=request.getRequestDispatcher("/pages/login.jsp");
                requestDispatcher.forward(request,response);
            }

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }




    }

}
