<%@ page import="javax.servlet.http.Cookie" %>
    <% Cookie[] cookies=request.getCookies(); String user=null; if (cookies !=null) { for (Cookie c : cookies) { if
        ("user".equals(c.getName())) { user=c.getValue(); } } } if (user==null) { response.sendRedirect("login.jsp"); }
        %>
        <html>

        <body>
            <h2>Welcome (Cookie), <%= user %>!</h2>
            <a href="logout-cookie">Logout</a>
        </body>

        </html>