package model;

public class Review {

    private int reviewId;
    private int companyId;
    private String username;
    private int rating;
    private String reviewText;

    public Review(int reviewId,
                  int companyId,
                  String username,
                  int rating,
                  String reviewText) {

        this.reviewId = reviewId;
        this.companyId = companyId;
        this.username = username;
        this.rating = rating;
        this.reviewText = reviewText;
    }

    public int getReviewId() {
        return reviewId;
    }

    public int getCompanyId() {
        return companyId;
    }

    public String getUsername() {
        return username;
    }

    public int getRating() {
        return rating;
    }

    public String getReviewText() {
        return reviewText;
    }
}
