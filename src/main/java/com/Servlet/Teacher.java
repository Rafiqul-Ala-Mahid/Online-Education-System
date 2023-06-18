package com.Servlet;

import com.Servlet.Dao.TeacherDao;
import com.Servlet.Models.Course;
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

@WebServlet(name = "Teacher", value = "/in/teacher")
public class Teacher extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("hellos");
        HttpSession httpSession=request.getSession();

        User user=(User) httpSession.getAttribute("login");
        System.out.println(user);
        TeacherDao teacherDao=new TeacherDao();
        try{

            List<Course> courses=teacherDao.getCourses(user.getUserId());


            request.setAttribute("allCourses",courses);
            RequestDispatcher requestDispatcher=request.getRequestDispatcher("/pages/teacher.jsp");
            requestDispatcher.forward(request,response);
        }
        catch (Exception e)
        {
         e.printStackTrace();
        }


    }
}