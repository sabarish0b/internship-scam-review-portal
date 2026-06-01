package servletPackage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.DBConnection;
import model.Company;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CompanyDropdownServlet")
public class CompanyDropdownServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {

            Connection con =
            DBConnection.getConnection();

            String query =
            "SELECT * FROM companies";

            PreparedStatement ps =
            con.prepareStatement(query);

            ResultSet rs =
            ps.executeQuery();

            ArrayList<Company> companyList =
            new ArrayList<>();

            while(rs.next()) {

                Company company =
                new Company(

                    rs.getInt("company_id"),
                    rs.getString("company_name"),
                    rs.getString("role"),
                    rs.getInt("stipend"),
                    rs.getString("location"),
                    rs.getString("tech_stack")

                );

                companyList.add(company);
            }

            request.setAttribute(
            "companyList",
            companyList);

            request.getRequestDispatcher(
            "addReview.jsp")
            .forward(request,response);

        }

        catch(Exception e){

            e.printStackTrace();
        }
    }
}
