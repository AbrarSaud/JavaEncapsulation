package Exercise;

public class Account {
    //  Properties - Attributes
    private String id;
    private String name;
    private int balance = 0;

    // Constructors
    public Account(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public Account(String id, String name, int balance) {
        this.id = id;
        this.name = name;
        this.balance = balance;
    }

    // Setter methods
    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setBalance(int balance) {
        if (balance >= 0) {
            this.balance = balance;
        } else {
            System.out.println("Balance cannot be negative!");

        }
    }

    // Getter methods
    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getBalance() {
        return balance;
    }

    //  Methods
    // Deposit money - الإيداع
    public int credit(int amount) {
        if (amount > 0) {
            balance += amount;
        } else {
            System.out.println("Deposit must be more than 0!");
        }
        return balance;
    }

    //    Withdraw money - السحب
    public int debit(int amount) {
        if (amount > 0 && amount <= balance) {
            balance -= amount;
        } else {
            System.out.println("Not enough money! Balance: " + balance + ", You want: " + amount);
        }
        return balance;
    }

    // Transfer money to another account - التحويل
    public int transferTo(Account another, int amount) {
        if (amount > 0 && amount <= balance) {
            this.balance -= amount;// Remove from this account
            another.credit(amount);// Add to another account
        } else {
            System.out.println("Transfer failed! Balance: " + balance + ", You want: " + amount);
        }

        return balance;
    }

    public String toString() {
        return "Account [id= " + id + ", name= " + name + ", balance= " + balance + "]";
    }


}
