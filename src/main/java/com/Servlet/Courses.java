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

@WebServlet(name = "Courses", value = "/course")
public class Courses extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


            RequestDispatcher requestDispatcher=request.getRequestDispatcher("/pages/courses.jsp");
            requestDispatcher.forward(request,response);




    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String title=request.getParameter("title");
        String summary=request.getParameter("summary");
        String teacher=request.getParameter("teacher");
        String teacherId=teacher.split(":")[1];
        String teacherName=teacher.split(":")[0];
        System.out.println(teacherId);
        try{

            CourseDao courseDao=new CourseDao();
            courseDao.saveCourse(title,summary,teacherId);
            RequestDispatcher requestDispatcher=request.getRequestDispatcher("/pages/courses.jsp");
            requestDispatcher.forward(request,response);
        }
        catch (Exception e)
        {
            e.printStackTrace();
            RequestDispatcher requestDispatcher=request.getRequestDispatcher("/pages/createCourse.jsp");
            requestDispatcher.forward(request,response);
        }





    }
}