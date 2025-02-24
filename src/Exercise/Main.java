package Exercise;

public class Main {
    public static void main(String[] args) {

        // Account Class - Objects
        // This I called constructor(String id, String name, int balance)
        Account acc1 = new Account("101", "Abrar", 500);
        // This I called constructor, which does not include balance.
        Account acc2 = new Account("102", "Reem");
        System.out.println("info Account 1 :" + acc1.toString());
        System.out.println("info Account 2 :" + acc2.toString());

        acc1.credit(200); // Add 200 to Account 1
        acc1.debit(100); // Remove 100 from Account 1
        acc1.transferTo(acc2, 150);// Transfer 150 from Account 1 to Account 2
        System.out.println("Updated Account 1 :" + acc1.toString());
        System.out.println("Updated Account 2:" + acc2.toString());

        /// -----------------------
        System.out.println("\n");
        // Employee Class -  Object
        Employee emp = new Employee("100", "Abrar", 5000);
        System.out.println("Employee info:" + emp.toString());
        // Print the annual salary (monthly salary * 12)
        System.out.println("Annual Salary: " + emp.getAnnualSalary());
        emp.raisedSalary(15);// Increase salary by 15%
        System.out.println("After Raise: " + emp);


    }
}