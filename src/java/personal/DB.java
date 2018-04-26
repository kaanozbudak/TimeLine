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
   private Statement statement,statement2,statement3,statement4,statement5,statement6;
   private ResultSet resultSet,resultSet3,resultSet4,resultSet5,resultSet6;
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
           System.out.println("error222");
       }
   }
   public int countTweet()
   {
       int count=0;
       try
       {
        startConnection();
        String sqlStatement3 = "SELECT count(email) FROM tweets;";
        statement3 = connection.createStatement();
        resultSet3 = statement3.executeQuery(sqlStatement3);
        while(resultSet3.next())
        {
            count = resultSet3.getInt(1);
        }
           return count;
       }
       catch( Exception e )
       {
            System.out.println("rakam GELMEDI");
            e.getMessage(); 
       }
       return count;
   }
   public String id(String tweet)
   {
       int id=0;
       try
       {
           startConnection();
           String sqlStatement6 =String.format("select id from tweets where tweet='%s'",tweet);
           statement6 = connection.createStatement();
           resultSet6 = statement6.executeQuery(sqlStatement6);
           while(resultSet6.next())
            {
                id = resultSet6.getInt(1);
            }
           System.out.println("idmn:" + id);
           return Integer.toString(id);
       }
       catch( Exception e )
       {
           System.out.println("hata geldi"+e.getMessage());
       }
       return Integer.toString(id);
   }
    public String matchEmail(String tweet)
   {
       String match="";
       try
       {
           startConnection();
           String sqlStatement5 = String.format("select email from tweets where id='%s'",id(tweet));
           statement5 = connection.createStatement();
           resultSet5 = statement5.executeQuery(sqlStatement5);
           while(resultSet5.next())
           {
               match = resultSet5.getString(TWEETS.EMAIL.toString());
           }
           return match;
       }
       catch( Exception e )
       {
           System.out.println(e.getMessage());
       }
       return match;
   }
   public ArrayList getTweet()
   {   
      ArrayList<String> list = new ArrayList<String>();
       String tweet="";
       try
       {
           startConnection();
           String sqlStatement4 = String.format("select tweet from tweets order by id desc");
           statement4 = connection.createStatement();
           resultSet4 = statement4.executeQuery(sqlStatement4);
           while(resultSet4.next())
           {
               tweet = resultSet4.getString(TWEETS.TWEET.toString());
               list.add(tweet);
           }
           
           return list;
       }
       catch( Exception e )
       {
           System.out.println("dusmedı: " + e.getLocalizedMessage());
           e.getMessage();
       }
       
       return list;
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
       String firstName="";
       try
       {
            startConnection();
            String sqlStatement1 = String.format("Select firstName from timetable where email='%s';",user.getEmail());
            
            statement = connection.createStatement();
            
            resultSet = statement.executeQuery(sqlStatement1);
            while(resultSet.next())
            {
                firstName = resultSet.getString(TIMETABLE.FIRSTNAME.toString());
            }
       }
       catch( Exception e ) {}
       
       return firstName;
   }
   public String getLastName(User user)
   {
        String lastName="";
       try
       {
            startConnection();
            String sqlStatement1 = String.format("Select lastName from timetable where email='%s';",user.getEmail());
            
            statement = connection.createStatement();
            
            resultSet = statement.executeQuery(sqlStatement1);
            while(resultSet.next())
            {
                lastName = resultSet.getString(TIMETABLE.LASTNAME.toString());
            }
       }
       catch( Exception e ) {}
       
       return lastName;
   }

   public void insertTweet(String email,String tweet)
   {   
       try
       {
           startConnection();
           String sqlStatement2= String.format("INSERT INTO tweets values ('%s','%s',default);",tweet,email);
           
           statement2 = connection.createStatement();
           
           statement2.executeUpdate(sqlStatement2);
           count++;
       }
       catch( Exception e )
       {  
           System.out.println("sql yanlis");
           System.out.println(e.getMessage());
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
        {}
    }
}
