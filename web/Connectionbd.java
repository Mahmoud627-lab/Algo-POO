import java.sql.*;
public class Connectionbd implements java.io.Serializable{
Connection con =null;
ResultSet rs = null ;
Statement stmt = null ;

    
    public Connectionbd() {} ;

   
   public  boolean driver (){
       try{
       Class.forName("com.mysql.jdbc.Driver");
       System.out.println("chargement de driver");
       return true;
       }
       catch(Exception e){
           System.out.println("Erreur lors de chargement de driver"+ e.getMessage());
          
       }
        return false;
   }
   
   public boolean OpenConnexion (){
   
   try{
       String url="jdbc:mysql://localhost:3306/socialmedia";
       con=DriverManager.getConnection(url,"root","");
       return true;
       }
       catch(Exception e){
           System.out.println("Echec d'ouverture de la cnx"+ e.getMessage());
          
       }
        return false;
   }
   
   public boolean CloseConnexion (){
   
   try{
       con.close();
       return true;
       }
       catch(Exception e){
           System.out.println("Echec de fermeture de la cnx"+ e.getMessage());
          
       }
        return false;
   }
   
   public ResultSet selectExec (String sql) {
   
   try{
       stmt=con.createStatement();
       rs=stmt.executeQuery(sql);
       }
       catch(Exception e){
           System.out.println("Echec d'éxecution de la requete"+ e.getMessage());
          
       }
   return rs;
   }
   
   public boolean closeResultSet (String sql) {
   
   try{
       
       rs.close();
       return true;
       }
       catch(Exception e){
           System.out.println("Echec de fermeture de ResultSet"+ e.getMessage());
           return false;
       }
   }
   
      public boolean closeStatement (String sql) {
   
   try{
       
       stmt.close();
       return true;
       }
       catch(Exception e){
           System.out.println("Echec de fermeture de Statement"+ e.getMessage());
           return false;
       }
   }
      
      public int updateExec (String sql){
      
          int i=0;
          try {
              con.setAutoCommit(false);
              stmt=con.createStatement();
              i=stmt.executeUpdate(sql);
              con.commit();
              
          } 
          catch(Exception e){
           System.out.println("Echec d'execution de la requete"+ e.getMessage());           
       }
          return i;
      }
   
}
