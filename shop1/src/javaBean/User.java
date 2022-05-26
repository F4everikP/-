package javaBean;

public class User {
    private String name;
    private int id;
    private String password;
    private int age;
    private int sex;

    public User(){

    }
    public User( int id,String name, String password, int age, int sex) {
        this.name = name;
        this.id = id;
        this.password = password;
        this.age = age;
        this.sex = sex;
    }
    public User( int id,String name, String password) {
        this.name = name;
        this.id = id;
        this.password = password;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }
}
