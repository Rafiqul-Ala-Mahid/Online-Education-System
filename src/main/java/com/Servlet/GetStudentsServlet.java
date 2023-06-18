package com.Servlet;

import com.Servlet.Dao.StudentDao;
import com.Servlet.Models.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/in/teacher/*")
public class GetStudentsServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("hellosbvhghgj");
        String url=request.getRequestURI();
        String[] url1=url.split("/");

//        System.out.println(url1.length);
        String id=url1[url1.length-1];
//
        System.out.println(id);
        try{
            StudentDao studentDao=new StudentDao();
            List<User> users= studentDao.getStudents(id);

            request.setAttribute("users",users);
            RequestDispatcher requestDispatcher=request.getRequestDispatcher("/pages/GetStudents.jsp");
            requestDispatcher.forward(request,response);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }


    }


}
