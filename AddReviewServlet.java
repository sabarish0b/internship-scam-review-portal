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

@WebServlet("/AddReviewServlet")
public class AddReviewServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        

        int companyId =
        Integer.parseInt(
        request.getParameter("companyid"));

        String username =
        request.getParameter("username");

        int rating =
        Integer.parseInt(
        request.getParameter("rating"));

        String reviewText =
        request.getParameter("reviewtext");

        try {

            Connection con =
            DBConnection.getConnection();
            
            String query =
            		"INSERT INTO reviews VALUES(review_seq.NEXTVAL,?,?,?,?)";
            PreparedStatement ps =
            con.prepareStatement(query);

//            ps.setInt(1, reviewId);
            ps.setInt(1, companyId);
            ps.setString(2, username);
            ps.setInt(3, rating);
            ps.setString(4, reviewText);

            int rows =
            ps.executeUpdate();

            if(rows > 0){

            	response.sendRedirect(
            			"dashboard.jsp?msg=reviewadded");

            }else {
            	response.sendRedirect(
            			"dashboard.jsp?msg=reviewfailed");
            }

        } catch(Exception e){

            e.printStackTrace();
        }
    }
}