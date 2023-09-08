package db;

import java.sql.*;
import java.util.*;


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
				break;
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
	
	public int insert(String customername,String accounttype,long balance,long mobileno,String dob,String emailid) throws SQLException
	{
		int insres=0;
		
		PreparedStatement ps=con.prepareStatement("insert into accountinfo(customername,actype,balance,mobno,dob,emailid) values(?,?,?,?,?,?)");
		ps.setString(1, customername);
		ps.setString(2, accounttype);
		ps.setLong(3, balance);
		ps.setLong(4, mobileno);
		ps.setString(5, dob);
		ps.setString(6, emailid);
		insres=ps.executeUpdate();
		return insres;
	}
	
	public ArrayList<Customer> view() throws SQLException //returns arraylist of customer viwe all customer data
	{
		ArrayList<Customer> cdata=new ArrayList<Customer>();
		
		Statement s=con.createStatement();
		ResultSet rs=s.executeQuery("select *from accountinfo");
		while(rs.next())
		{
			Customer c=new Customer(rs.getLong("acno"),rs.getString("customername"),rs.getString("actype"),
					rs.getLong("balance"),rs.getLong("mobno"),rs.getString("Dob"),rs.getString("emailid"));
			cdata.add(c);
		}
		
		return cdata;
	}
	
	public int update(long accountnumber,String email,long mobileno) throws SQLException
	{
		int ures=0;
		PreparedStatement ps=con.prepareStatement("update accountinfo set emailid=?,mobno=? where acno=?");
		ps.setString(1, email);
		ps.setLong(2, mobileno);
		ps.setLong(3, accountnumber);
		ures=ps.executeUpdate();
		return ures;
	}
	
	


}
