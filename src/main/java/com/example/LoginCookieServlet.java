package com.example;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login-cookie")
public class LoginCookieServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("admin".equals(username) && "123".equals(password)) {
            Cookie userCookie = new Cookie("user", username);
            userCookie.setMaxAge(60 * 60); // 1h
            response.addCookie(userCookie);
            response.sendRedirect("welcome-cookie.jsp");
        } else {
            response.sendRedirect("login.jsp?error=1");
        }
    }
}
