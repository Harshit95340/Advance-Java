import java.sql.*;

public class JDBCConnection
{
	public static void main(String args) throws SQLException, ClassNotFoundException
	{
		Class.forName(" ");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BCA","root","Harsh@2003");
		
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery("Select * from Student");
		
		while (rs.next())
		{
			System.out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getDate(3));
		}
		
		con.close();
	}
}
