package com.Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/")
public class Home extends HttpServlet  {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("hellos");
        RequestDispatcher requestDispatcher=request.getRequestDispatcher("/pages/home.jsp");
        requestDispatcher.forward(request,response);

    }

    public static class Register {
    }
}
