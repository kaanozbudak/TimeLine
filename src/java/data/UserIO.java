/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

/**
 *
 * @author Dragon
 */

import personal.User;
import java.io.FileWriter;
import java.io.IOException;


public class UserIO 
{
    public static void write(User user,String path) throws IOException
    {
            FileWriter fw = new FileWriter(path,true);
        
            fw.write("Name: "+user.getUserName()+"|"+" Password:"+user.getPassword()+"\n");
            
            fw.close();
     
    }
}
