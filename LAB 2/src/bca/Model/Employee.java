package bca.Model;

import java.sql.*;

public class Employee {
	public void Select() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BCA", "root", "Harsh@2003");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from Emploee");
		System.out.println("Emp_id\t\tEmp_Name\t\t\tdob");
		while (rs.next()) {
			System.out.println(rs.getInt(1) + "\t" + rs.getString(2) + "\t\t" + rs.getDate(3));
		}
		con.close();
	}

	public void Delete(String ID) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BCA", "root", "Harsh@2003");
		String query = "Delete from Emploee where Emp_id = ?";
		PreparedStatement pst = con.prepareStatement(query);
		pst.setString(1, ID);
		int affected_rows = pst.executeUpdate();
		System.out.println("Affected Rows :" + affected_rows);
		con.close();
	}

	public void Insert(String ID, String name, String date) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BCA", "root", "Harsh@2003");
		String query = "Insert into Emploee values (? , ? ,?)";
		PreparedStatement pst = con.prepareStatement(query);
		pst.setString(1, ID);
		pst.setString(2, name);
		pst.setString(3, date);
		int affected_rows = pst.executeUpdate();
		System.out.println("Affected Rows :" + affected_rows);
		con.close();
	}

	public void Update(String ID, String name, String date) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BCA", "root", "Harsh@2003");
		String query = "Update Emploee set Emp_Name = ? , dob = ? where Emp_id = ?";
		PreparedStatement pst = con.prepareStatement(query);
		pst.setString(1, name);
		pst.setString(2, date);
		pst.setString(3, ID);
		int affected_rows = pst.executeUpdate();
		System.out.println("Affected Rows :" + affected_rows);
		con.close();
	}

	public void Select_Specific(String ID) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BCA", "root", "Harsh@2003");
		String query = "select * from Emploee where Emp_id = ?";
		PreparedStatement pst = con.prepareStatement(query);
		pst.setString(1, ID);
		ResultSet rs = pst.executeQuery();
		System.out.println("ID\t\tName\t\t\tDOB");
		while (rs.next()) {
			System.out.println(rs.getInt(1) + "\t" + rs.getString(2) + "\t\t" + rs.getDate(3));
		}
		con.close();
	}

}
