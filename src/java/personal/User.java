/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package personal;

/**
 *
 * @author Dragon
 */
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
