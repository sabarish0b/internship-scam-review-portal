//package model;
//
//public class Company {
//
//}
package model;

public class Company {

    private int companyId;
    private String companyName;
    private String role;
    private int stipend;
    private String location;
    private String techStack;

    public Company(int companyId,
                   String companyName,
                   String role,
                   int stipend,
                   String location,
                   String techStack) {

        this.companyId = companyId;
        this.companyName = companyName;
        this.role = role;
        this.stipend = stipend;
        this.location = location;
        this.techStack = techStack;
    }

    public int getCompanyId() {
        return companyId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public String getRole() {
        return role;
    }

    public int getStipend() {
        return stipend;
    }

    public String getLocation() {
        return location;
    }

    public String getTechStack() {
        return techStack;
    }
}