package com.Servlet;

import com.Servlet.Dao.CourseDao;
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

@WebServlet(name = "Courses", value = {"/course"})
public class Courses extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            CourseDao courseDao=new CourseDao();
            List<Course> courses=courseDao.getCourse();
            request.setAttribute("allCourses",courses);
            HttpSession session=request.getSession();
            User user = (User) session.getAttribute("login");

            if(user != null)
            {
                request.setAttribute("allCourses",courses);
                request.setAttribute("role",String.valueOf(user.getRole()));
                RequestDispatcher requestDispatcher=request.getRequestDispatcher("/pages/courses.jsp");
                requestDispatcher.forward(request,response);
            }
            else{
                response.sendRedirect("/webtech3/login");
            }






    }

}