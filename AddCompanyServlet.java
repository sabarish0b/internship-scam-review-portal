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

@WebServlet("/AddCompanyServlet")
public class AddCompanyServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

//        int companyid =
//        Integer.parseInt(
//        request.getParameter("companyid"));

        String companyname =
        request.getParameter("companyname");

        String role =
        request.getParameter("role");

        int stipend =
        Integer.parseInt(
        request.getParameter("stipend"));

        String location =
        request.getParameter("location");

        String techstack =
        request.getParameter("techstack");

        try {

            Connection con =
            DBConnection.getConnection();

            String query =
            		"INSERT INTO companies VALUES(company_seq.NEXTVAL,?,?,?,?,?)";
            PreparedStatement ps =
            con.prepareStatement(query);

//            ps.setInt(1, companyid);
            ps.setString(1, companyname);
            ps.setString(2, role);
            ps.setInt(3, stipend);
            ps.setString(4, location);
            ps.setString(5, techstack);

            int rows = ps.executeUpdate();

            if(rows > 0){

            	response.sendRedirect(
            			"dashboard.jsp?msg=companyadded");

            }
            else{

                response.getWriter()
                .println("Failed To Add Company");

            }

        } catch(Exception e){

            e.printStackTrace();
        }
    }
}
