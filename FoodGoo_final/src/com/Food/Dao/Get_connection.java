package com.Food.Dao;
import java.sql.Connection;
import java.sql.DriverManager;
public class Get_connection
{
	String uemail="root";
	String pass="Root123*";
	String url="jdbc:mysql://localhost:3306/foodgo?useSSL=false";

	public Connection get() {

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,uemail,pass);
			return con;
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return null;
	}
}
