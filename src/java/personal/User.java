package personal;

public class User 
{
    private String userName;
    private String password;
    public User(String userName1,String password1)
    {
        userName=userName1;
        password=password1;
    }
    
    public String getUserName()
    {
        return userName;
    }
    public String getPassword()
    {
        return password;
    }
}
