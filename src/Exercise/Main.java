package Exercise;

public class Main {
    public static void main(String[] args) {

        // ---------------- ACCOUNT Class ----------------
        System.out.println("************** ACCOUNT CLASS SECTION **************");
        // Account Class - Objects
        // Here I called constructor( id,  name,  balance)
        Account acc1 = new Account("101", "Abrar", 500);
        // Here I called constructor only (id, name) without balance
        Account acc2 = new Account("102", "Reem");
        System.out.println("Account 1 Info: " + acc1.toString());
        System.out.println("Account 2 Info: " + acc2.toString());

        acc1.credit(200); // Add 200 to Account 1
        acc1.debit(100); // Withdraw 100 from Account 1
        acc1.transferTo(acc2, 150);// Transfer 150 from Account 1 to Account 2
        System.out.println("Updated Account 1 Info : " + acc1.toString());
        System.out.println("Updated Account 2 Info: " + acc2.toString());


        // ---------------- EMPLOYEE Class ----------------
        System.out.println("\n************** EMPLOYEE CLASS SECTION **************");
        // Employee  -  Object
        Employee emp = new Employee("100", "Abrar", 5000);
        System.out.println("Employee Info: " + emp.toString());
        // Print the annual salary (monthly salary * 12)
        System.out.println("Annual Salary: " + emp.getAnnualSalary());
        emp.raisedSalary(15);// Increase salary by 15%
        System.out.println("After Raise: " + emp.toString());


    }
}