package data;

import java.io.File;
import personal.User;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;


public class UserIO 
{
    public static void write(User user,String path) throws IOException
    {
            FileWriter fw = new FileWriter(path,true);
        
            fw.write(user.getUserName()+"|"+user.getPassword()+"\n");
            
            fw.close();
    }
    public static boolean reader(String path,String userName,String password) throws IOException
    {   
        File file = new File(path);
        String line;
        try
        {
            //while içinde array splitle kaydet eger username eslesirse true or false yolla
            Scanner input = new Scanner(file);
            String[] array;
            while(input.hasNextLine()==false)
            {
                if ( true )
                {
                    return true;
                }
                if ( true )
                {
                    return false;
                }
            }
            
        }
        catch (Exception e)
        {
            System.out.println ("not found");
            line="wronger";
        }
        return true;
    }
}
