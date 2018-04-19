package personal;

public class User 
{
    private String userName;
    private String password;
    private String email;
    private String firstName;
    private String lastName;
    
    public User(String firstName1,String lastName1,String email1,String password1)
    {
        password=password1;
        email=email1;
        firstName=firstName1;
        lastName=lastName1;
    }
    public User(String email1,String password1)
    {
        password=password1;
        email=email1;
    }
    public String getPassword()
    {
        return password;
    }
    public String getEmail()
    {
        return email;
    }
    public String getFirstName()
    {
        return firstName;
    }
    public String getLastName()
    {
        return lastName;
    }
}
