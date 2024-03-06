import java.sql.*;

public class Select 
{
	public static void main(String args[]) throws SQLException, ClassNotFoundException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BCA","root","Harsh@2003");
		
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery("select * from Employe");
		System.out.println("Roll\tFirst Name\tLast Name\tAge\t\tDOB");
		while (rs.next())
		{
			System.out.println(rs.getInt(1)+"\t"+rs.getString(4)+"\t\t"+rs.getString(5)+"\t"+rs.getString(2)+"\t\t"+rs.getDate(3));
		}
		
		con.close();
	}
}
