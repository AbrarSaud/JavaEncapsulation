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
        setSalary(salary); // Use setSalary to check for negative values
    }


    // Setter methods
    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSalary(int salary) {
        if (salary >= 0) {
            this.salary = salary;
        } else {
            System.out.println("Salary cannot be negative!");
        }
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

    //  Methods
    // Method to get the annual salary (salary for 12 months)
    public int getAnnualSalary() {
        return salary * 12;
    }

    // Method to increase the salary by a percentage
    public int raisedSalary(int percent) {
        if (percent > 0) {
            salary += (salary * percent) / 100;
        } else {
            System.out.println("Raise percentage must be positive!");
        }
        return salary; // Return the new salary
    }

    public String toString() {
        return "[id= " + id + ", name= " + name + ", Salary= " + salary + "]";
    }

}
