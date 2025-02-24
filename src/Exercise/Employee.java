package Exercise;

public class Employee {
    //  Properties - Attributes
    private String id;
    private String name;
    private int salary;

    // Constructors
    public Employee(String id, String name, int salary) {
        this.id = id;
        this.name = name;
        this.salary = salary;
    }


    // Setter methods
    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    // Getter methods
    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getSalary() {
        return salary;
    }

    public int getAnnualSalary() {
        return 1;
    }

    public int raisedSalary(int percent) {
        return 1;
    }

    public String toStaring() {
        return "";
    }

}
