<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html>

    <head>
        <title>Login Page</title>
    </head>

    <body>
        <h2>Login Form</h2>

        <% if (request.getParameter("error") !=null) { %>
            <p style="color:red;">Invalid username or password!</p>
            <% } %>

                <!-- Login bằng Session -->
                <form action="login" method="post">
                    <label>Username:</label>
                    <input type="text" name="username" required /> <br><br>

                    <label>Password:</label>
                    <input type="password" name="password" required /> <br><br>

                    <input type="submit" value="Login with Session" />
                </form>

                <br><br>

                <!-- Login bằng Cookie -->
                <form action="login-cookie" method="post">
                    <label>Username:</label>
                    <input type="text" name="username" required /> <br><br>

                    <label>Password:</label>
                    <input type="password" name="password" required /> <br><br>

                    <input type="submit" value="Login with Cookie" />
                </form>

    </body>

    </html>