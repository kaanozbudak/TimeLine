package personal;
import java.sql.*;

public class DB
{
   enum timetable
   {
       id,email,password;
   }
   private Connection connection;
   private Statement statement;
   private ResultSet resultSet;
   
   public DB()
   {
       
   }
   private void startConnection()
   {    
       String javaDriver = "com.mysql.jdbc.Driver";
       String javaUrl = "jdbc:mysql://localhost/timelinedb";
       String root = "root";
       String myPassword="rosekaan1";
       try
       {
           Class.forName(javaDriver);
           connection = DriverManager.getConnection(javaUrl,root,myPassword);
       }
       catch( Exception e )
       {
           System.out.println("error222");
       }
   }
   public void registerUser(User user)
   {   
       try
       {
           startConnection();
           String sqlStatement = String.format("INSERT INTO timetable values (default,'%s','%s','%s','%s');"
                   ,user.getFirstName(),user.getLastName(),user.getEmail(),user.getPassword());
           statement = connection.createStatement();
           statement.executeUpdate(sqlStatement);
       }
       catch (SQLException e) 
       {
            e.printStackTrace();
            System.out.print(e.getMessage());
           
        } 
        finally
        {
            close();
        }
    }
   public boolean checkUser(User user)
   {
       try
       {
            startConnection();
            String sqlStatement = String.format("Select * from timetable where email='%s' and password='%s';",user.getEmail(),user.getPassword());
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sqlStatement);
            return resultSet.next();
       }
       catch( Exception e )
       {
       }
       return false;
   }
   public String getFirstName(User user)
   {    
       try
       {
            startConnection();
            String sqlStatement = String.format("Select * from timetable where email='%s' and password='%s';",user.getEmail(),user.getPassword());
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sqlStatement);
       }
       catch( Exception e ) {}
       
       String firstName ="";

       return firstName;
   }
   private void close()
    {
        try 
        {
            if(resultSet!=null) resultSet.close();
            if(statement!=null) statement.close();
            if(connection!=null) connection.close();
        } 
        catch(Exception e)
        {}
    }
}
