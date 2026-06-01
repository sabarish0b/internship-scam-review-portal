package servletPackage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.DBConnection;
import model.Review;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ViewReviewsServlet")
public class ViewReviewsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {

            Connection con =
            DBConnection.getConnection();

            String query =
            "SELECT * FROM reviews";

            PreparedStatement ps =
            con.prepareStatement(query);

            ResultSet rs =
            ps.executeQuery();

            ArrayList<Review> reviewList =
            new ArrayList<>();

            while(rs.next()) {

                Review review =
                new Review(

                    rs.getInt("review_id"),
                    rs.getInt("company_id"),
                    rs.getString("username"),
                    rs.getInt("rating"),
                    rs.getString("review_text")

                );

                reviewList.add(review);
            }

            request.setAttribute(
            "reviewList",
            reviewList);

            request.getRequestDispatcher(
            "viewReviews.jsp")
            .forward(request,response);

        }

        catch(Exception e) {

            e.printStackTrace();
        }
    }
}