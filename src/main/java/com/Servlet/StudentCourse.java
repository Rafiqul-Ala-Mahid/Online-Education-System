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

@WebServlet("/in/student")
public class StudentCourse extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        HttpSession session=request.getSession();
        User user=(User) session.getAttribute("login");
        String studentId=user.getUserId();
        CourseDao courseDao=new CourseDao();
        try{

            List<Course> studentCourseList=courseDao.getCoursesByStudent(studentId);

            request.setAttribute("allCourses",studentCourseList);
            RequestDispatcher requestDispatcher=request.getRequestDispatcher("/pages/student.jsp");
            requestDispatcher.forward(request,response);


        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
//        System.out.println("hellos");

    }
}
