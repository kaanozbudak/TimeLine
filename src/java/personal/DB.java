package personal;
import java.sql.*;
import java.util.ArrayList;

public class DB
{
   enum TIMETABLE
   {
       ID,EMAIL,FIRSTNAME,LASTNAME;
   }
   enum TWEETS
   {
       TWEET,EMAIL;
   }
   private Connection connection;
   private Statement statement;
   private ResultSet resultSet;
   private int count=0;
   
   public DB()
   {
   }
   public void startConnection()
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
           System.out.println("error1"+e.getLocalizedMessage());
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
           System.out.println("error5"+e.getLocalizedMessage());
           
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
        System.out.println("error6"+e.getLocalizedMessage());

       }
        finally
        {
            close();
        }
       return false;
   }
   public int countTweet()
   {
       int count=0;
       try
       {
        startConnection();
        String sqlStatement = "SELECT count(email) FROM tweets;";
        statement = connection.createStatement();
        resultSet = statement.executeQuery(sqlStatement);
        while(resultSet.next())
        {
            count = resultSet.getInt(1);
        }
           return count;
       }
       catch( Exception e )
       {
            System.out.println("error2"+e.getLocalizedMessage());
       }
      
       return count;
   }
   public String id(String tweet)
   {
       int id=0;
       try
       {
           String sqlStatement =String.format("select id from tweets where tweet='%s'",tweet);
           statement = connection.createStatement();
           resultSet = statement.executeQuery(sqlStatement);
           while(resultSet.next())
            {
                id = resultSet.getInt(1);
            }
           return Integer.toString(id);
       }
       catch( Exception e )
       {
           System.out.println("error2"+e.getLocalizedMessage());
       }
      
       return Integer.toString(id);
   }
    public String matchEmail(String tweet)
   {
       String match="";
       try
       {
           String sqlStatement = String.format("select email from tweets where id='%s'",id(tweet));
           statement = connection.createStatement();
           resultSet = statement.executeQuery(sqlStatement);
           while(resultSet.next())
           {
               match = resultSet.getString(TWEETS.EMAIL.toString());
           }
           return match;
       }
       catch( Exception e )
       {
           System.out.println("error3"+e.getLocalizedMessage());
       }
      
       System.out.println("eslesen"+match);
       return match;
   }
   public ArrayList getTweet()
   {   
      ArrayList<String> list = new ArrayList<String>();
       String tweet="";
       try
       {    
           String sqlStatement = String.format("select tweet from tweets order by id desc");
           statement = connection.createStatement();
           resultSet = statement.executeQuery(sqlStatement);
           while(resultSet.next())
           {
               tweet = resultSet.getString(TWEETS.TWEET.toString());
               list.add(tweet);
           }
           
           return list;
       }
       catch( Exception e )
       {
           System.out.println("error4"+e.getLocalizedMessage());
       }
       return list;
   }
   public String getFirstName(User user)
   {   
       String firstName="";
       try
       {
           startConnection();
            String sqlStatement = String.format("Select firstName from timetable where email='%s';",user.getEmail());
            
            statement = connection.createStatement();
            
            resultSet = statement.executeQuery(sqlStatement);
            while(resultSet.next())
            {
                firstName = resultSet.getString(TIMETABLE.FIRSTNAME.toString());
            }
       }
       catch( Exception e ) {
                  System.out.println("error7"+e.getLocalizedMessage());
            }
        
       return firstName;
   }
   public String getLastName(User user)
   {
        String lastName="";
       try
       {
           startConnection();
            String sqlStatement = String.format("Select lastName from timetable where email='%s';",user.getEmail());
            
            statement = connection.createStatement();
            
            resultSet = statement.executeQuery(sqlStatement);
            while(resultSet.next())
            {
                lastName = resultSet.getString(TIMETABLE.LASTNAME.toString());
            }
       }
       catch( Exception e ) {
                  System.out.println("error7"+e.getLocalizedMessage());
        }
       return lastName;
   }

   public void insertTweet(String email,String tweet)
   {   
       try
       {
           startConnection();
           String sqlStatement= String.format("INSERT INTO tweets values ('%s','%s',default);",tweet,email);
           
           statement = connection.createStatement();
           
           statement.executeUpdate(sqlStatement);
           count++;
       }
       catch( Exception e )
       {  
            System.out.println("error8"+e.getLocalizedMessage());

       }
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
        {
            System.out.println("error10"+e.getLocalizedMessage());
        }
    }
}
