package servletPackage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import db.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int userid = Integer.parseInt(request.getParameter("userid"));

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
        
        
        System.out.println(userid);
        System.out.println(name);
        System.out.println(email);
        System.out.println(password);
        System.out.println(role);

        try {

            Connection con = DBConnection.getConnection();

            String query =
            		"INSERT INTO users(user_id,name,email,password,role) VALUES(?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, userid);
            ps.setString(2, name);
            ps.setString(3, email);
            ps.setString(4, password);
            ps.setString(5, role);

            int rows = ps.executeUpdate();

            if(rows > 0) {

                System.out.println("DATA INSERTED SUCCESSFULLY");

                response.getWriter().println("Registration Successful");

            }
            else {

                System.out.println("INSERT FAILED");

                response.getWriter().println("Registration Failed");
            }

        }catch(Exception e) {

            System.out.println("ERROR:");
            e.printStackTrace();

        }
    }
}