package personal;
import java.sql.*;
import java.util.ArrayList;

public class DB
{
   enum TIMETABLE
   {
       ID,EMAIL,FIRSTNAME,LASTNAME,PATH;
   }
   enum TWEETS
   {
       TWEET,EMAIL,DATER,ID,COUNT;
   }
   private Connection connection;
   private Statement statement;
   private ResultSet resultSet;
   public DB()
   {
   }
   public void startConnection()
   {    
       String javaDriver = "com.mysql.jdbc.Driver";
       String jdbcURLRemoteHost = "jdbc:mysql://localhost:3306/timelinedb?useUnicode=true&characterEncoding=UTF-8";
       String root = "root";
       String myPassword="rosekaan1";
       try
       {
           Class.forName(javaDriver);
           // for local
           // connection = DriverManager.getConnection(javaUrl,root,myPassword);
           // for remote
           connection = DriverManager.getConnection(jdbcURLRemoteHost,root,myPassword);

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
           String sqlStatement = String.format("INSERT INTO timetable values (default,'%s','%s','%s','%s','%s');"
                   ,user.getFirstName(),user.getLastName(),user.getEmail(),user.getPassword(),user.getPath1());
           statement = connection.createStatement();
           statement.executeUpdate(sqlStatement);
        }
        catch (SQLException e) 
        {
           System.out.println("error5"+e.getLocalizedMessage());
           
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
        System.out.println("error6"+e.getLocalizedMessage());

       }
       finally
       {
           close();
       }
       return false;
   }
   
   public void insertTweet(String email,String tweet)
   {   
       try
       {
           startConnection();
           String sqlStatement= String.format("INSERT INTO tweets values ('%s','%s',default,CURTIME());",tweet,email);
           
           statement = connection.createStatement();
           
           statement.executeUpdate(sqlStatement);
       }
       catch( Exception e )
       {  
            System.out.println("error8"+e.getLocalizedMessage());

       }
       finally
       {
           close();
       }
   }
   public Tweet tweet()
   {
       Tweet tw = new Tweet();
       ArrayList<String> list = new ArrayList<String>();
       ArrayList<String> list2= new ArrayList<String>();
       ArrayList<String> list3= new ArrayList<String>();
       
       try
       {    
           startConnection();
           String sqlStatement =String.format("select *, (SELECT count(email) FROM tweets) as Count from tweets order by id desc;");
           statement = connection.createStatement();
           resultSet = statement.executeQuery(sqlStatement);
         
            while(resultSet.next())
            {
                Integer id = resultSet.getInt(TWEETS.ID.toString());
                String tweet = resultSet.getString(TWEETS.TWEET.toString());
                String email = resultSet.getString(TWEETS.EMAIL.toString());
                String dater = resultSet.getString(TWEETS.DATER.toString());
                Integer count = resultSet.getInt(TWEETS.COUNT.toString());
                list.add(tweet);
                list2.add(email);
                list3.add(dater);
                tw = new Tweet(list,id,list2,list3,count);
            }
           return tw;
       }
       catch( Exception e )
       {
           System.out.println("error2"+e.getLocalizedMessage());
       }
       finally
       {
           close();
       }
       return tw;
   }
   public String getPhoto(String email)
   {
       String path="";
       try
       {
            startConnection();
            String sqlStatement = String.format("Select path from timetable where email='%s';",email);
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sqlStatement);
            while(resultSet.next())
            {
                path = resultSet.getString(TIMETABLE.PATH.toString());
            }
            return path;
       }
       catch( Exception e )
       {
       }
       finally
       {
           close();
       }
       return path;
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