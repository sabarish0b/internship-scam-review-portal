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

@WebServlet("/ReportScamServlet")
public class ReportScamServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int reportId =
        Integer.parseInt(
        request.getParameter("reportid"));

        String companyName =
        request.getParameter("companyname");

        String reportedBy =
        request.getParameter("reportedby");

        String reason =
        request.getParameter("reason");

        try {

            Connection con =
            DBConnection.getConnection();

            String query =
            "INSERT INTO scam_reports VALUES(?,?,?,?)";

            PreparedStatement ps =
            con.prepareStatement(query);

            ps.setInt(1, reportId);
            ps.setString(2, companyName);
            ps.setString(3, reportedBy);
            ps.setString(4, reason);

            int rows =
            ps.executeUpdate();

            if(rows > 0){

            	response.sendRedirect(
            			"dashboard.jsp?msg=scamreported");

            }

        } catch(Exception e){

            e.printStackTrace();
        }
    }
}
