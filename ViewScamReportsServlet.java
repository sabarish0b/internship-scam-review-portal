package servletPackage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.DBConnection;
import model.ScamReport;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ViewScamReportsServlet")
public class ViewScamReportsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {

            Connection con =
            DBConnection.getConnection();

            String query =
            "SELECT * FROM scam_reports";

            PreparedStatement ps =
            con.prepareStatement(query);

            ResultSet rs =
            ps.executeQuery();

            ArrayList<ScamReport> reportList =
            new ArrayList<>();

            while(rs.next()) {

                ScamReport report =
                new ScamReport(

                    rs.getInt("report_id"),
                    rs.getString("company_name"),
                    rs.getString("reported_by"),
                    rs.getString("reason")

                );

                reportList.add(report);
            }

            request.setAttribute(
            "reportList",
            reportList);

            request.getRequestDispatcher(
            "viewScamReports.jsp")
            .forward(request,response);

        }

        catch(Exception e) {

            e.printStackTrace();
        }
    }
}
