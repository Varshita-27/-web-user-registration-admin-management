
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
</head>
<body>
    <h2>User Registration Form</h2>
    <form action="index.jsp" method="post">
        Name: <input type="text" name="name" required><br><br>
        Email: <input type="email" name="email" required><br><br>
        Password: <input type="password" name="pass" required><br><br>
        Phone: <input type="text" name="phone" required><br><br>
        Address: <textarea name="address" required></textarea><br><br>
        <input type="submit" name="btn" value="Register">
    </form>

<%
    try {
        String btn = request.getParameter("btn");
        if("Register".equals(btn)) {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");

            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "");
            java.sql.Statement st = con.createStatement();
            int i = st.executeUpdate("insert into user (name, email, pass, phone, address) values ('" + name + "','" + email + "','" + pass + "','" + phone + "','" + address + "')");
            if(i > 0) {
%>
                <script>
                    alert("Registered Successfully");
                    window.location.href="index.jsp";
                </script>
<%
            }
        }
    } catch(Exception e) {
        out.println(e);
    }
%>
</body>
</html>
