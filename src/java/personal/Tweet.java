package personal;
import java.util.ArrayList;

public class Tweet
{
   ArrayList<String> tweet;
   int id;
   String matchEmail;
   String date;
   int count;
   public Tweet(ArrayList tweet,int id,String matchEmail,String date,int count)
   {
       this.tweet=tweet;
       this.id=id;
       this.matchEmail=matchEmail;
       this.date=date;
       this.count=count;
   }
   public Tweet()
   {
       
   }
   public ArrayList<String> getTweet()
   {
       return tweet;
   }
   public int getCount()
   {
       return count;
   }
   public String getDate()
   {
       return date;
   }
   public int getId()
   {
       return id;
   }
   public String getMatch()
   {
       return matchEmail;
   }
   public void setTweet(ArrayList tweet)
   {
       this.tweet = tweet;
   }
   public void setDate(String date)
   {
       this.date=date;
   }
   public void setId(int id)
   {
       this.id = id;
   }
   public void setEmail(String matchEmail)
   {
       this.matchEmail = matchEmail;
   }
}
