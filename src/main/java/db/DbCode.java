package db;

import java.sql.*;

public class DbCode {
	
	public static Connection con;
	
	
	public DbCode() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","");
		
	}
	
	public boolean login(String username,String password) throws SQLException
	{
		boolean b=false;
		Statement s=con.createStatement();
		ResultSet rs=s.executeQuery("select *from logincredentials");
		while(rs.next())
		{
			if(username.equals(rs.getString("username")) && password.equals(rs.getString("password")))
			{
				b=true;
			}
			else
			{
				b=false;
			}
		}
		return b;
	}
	
	public int reg(String email,String username,String password) throws SQLException
	{
		int res=0;
		
		PreparedStatement ps=con.prepareStatement("insert into logincredentials value(?,?,?)");
		ps.setString(1, email);
		ps.setString(2, username);
		ps.setString(3, password);
		res=ps.executeUpdate();
		
		return res;
		
	}

}
