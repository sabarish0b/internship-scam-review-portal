package model;

public class ScamReport {

    private int reportId;
    private String companyName;
    private String reportedBy;
    private String reason;

    public ScamReport(
            int reportId,
            String companyName,
            String reportedBy,
            String reason) {

        this.reportId = reportId;
        this.companyName = companyName;
        this.reportedBy = reportedBy;
        this.reason = reason;
    }

    public int getReportId() {
        return reportId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public String getReportedBy() {
        return reportedBy;
    }

    public String getReason() {
        return reason;
    }
}
