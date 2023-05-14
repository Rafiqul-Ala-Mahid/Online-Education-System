package com.Servlet;

import com.Servlet.Dao.CourseDao;
import com.Servlet.Models.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "CreateCourse", value = "/in/admin/createCourse")
public class CreateCourse extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("hellos");
        CourseDao courseDao=new CourseDao();
        try {
            List<User> teachers=courseDao.getTeachers();

            System.out.println(teachers);
            System.out.println("hellos");
            request.setAttribute("teachers",teachers);
            RequestDispatcher requestDispatcher=request.getRequestDispatcher("/pages/createCourse.jsp");
            requestDispatcher.forward(request,response);

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }


    }
}