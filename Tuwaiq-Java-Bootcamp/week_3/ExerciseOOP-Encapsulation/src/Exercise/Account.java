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
        this.balance = balance;
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
    public int credit(int amount) {
        return 1;
    }

    public int debit(int amount) {
        return 1;
    }

    public int transferTo(Account another, int amount) {
        return 1;
    }

    public String toString() {
        return "";
    }


}
