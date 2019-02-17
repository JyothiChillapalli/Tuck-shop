package com;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.protocol.Resultset;

public class Functionalities {
	public int CheckLogin(String uname, String pass) throws Exception
	{	int type=-1;
		Connection C = new Connection();
		java.sql.Connection con = C.dbConnect();
		if(uname.equals("Admin"))
	       {   if(pass.equals("1234"))
	    		   type=0;
	       return type;}
		try 
		{
			java.sql.PreparedStatement st = null;
			ResultSet rs = null;
			String sql = "Select * from Login where Username='"+uname+"' and Password='"+pass+"'";
			st = con.prepareStatement(sql);
			rs = st.executeQuery();
			if (rs.next()) {
				type=1;
				sql = "Insert into cart values('login','"+uname+"','0')";
				st = con.prepareStatement(sql);
				st.executeUpdate();
			} else
				type=2;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(type);
		return type;
	}
	public int addUser(String s1,String s2,String s3,String s4,String s5) throws Exception
	{
		Connection C = new Connection();
		java.sql.Connection con = C.dbConnect();
		try 
		{
			java.sql.PreparedStatement st = null;
			String sql = "Insert into UserInfo values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','0')";
			st = con.prepareStatement(sql);
			st.executeUpdate();
			sql = "Insert into Login values('"+s1+"','"+s2+"')";
			st = con.prepareStatement(sql);
			st.executeUpdate();
			CheckLogin(s1,s2);
			return 1;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return 0;
		}
}
	public void addBooks(String s1,String s2) throws Exception
	{
		int c=Integer.parseInt(s2), price=0,tp=0;
		Connection C = new Connection();
		java.sql.Connection con = C.dbConnect();
		try 
		{
			java.sql.PreparedStatement st = null;
			String sql = "Select QTY from cart where Objects='"+s1+"'";
			st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{		c=c+Integer.parseInt(rs.getString(1));
				sql = "Update cart set QTY ='"+c+"' where Objects = '"+s1+"'";
				st = con.prepareStatement(sql);
				st.executeUpdate(sql);
			}
		else
		{
			sql = "Insert into cart values('"+s1+"','"+c+"','0')";
			System.out.println(sql);
			st = con.prepareStatement(sql);
			st.executeUpdate();
		}	
			if(s1.equals("books50"))price=25;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("books100"))price=50;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			} 
			
			if(s1.equals("books200"))price=125;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("bookcm50"))price=20;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			} 
			
			if(s1.equals("bookcm100"))price=40;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("bookcm200"))price=80;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("bookc50"))price=22;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			if(s1.equals("bookc100"))price=44;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("booksc200"))price=66;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
		   }
		}		
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	
	public void addPens(String s1,String s2) throws Exception
	{
		int c=Integer.parseInt(s2), price=0,tp=0;
		Connection C = new Connection();
		java.sql.Connection con = C.dbConnect();
		try 
		{
			java.sql.PreparedStatement st = null;
			String sql = "Select QTY from cart where Objects='"+s1+"'";
			st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{		c=c+Integer.parseInt(rs.getString(1));
				sql = "Update cart set QTY ='"+c+"' where Objects = '"+s1+"'";
				st = con.prepareStatement(sql);
				st.executeUpdate(sql);
			}
		else
		{
			sql = "Insert into cart values('"+s1+"','"+c+"','0')";
			System.out.println(sql);
			st = con.prepareStatement(sql);
			st.executeUpdate();
		}	
			if(s1.equals("penpgblue"))price=200;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("penpgblack"))price=185;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("penpgred"))price=225;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
		   	  st.executeUpdate(sql);
			}
			
			if(s1.equals("penpbblue"))price=100;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("penpbblack"))price=85;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("penpbred"))price=125;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("penlgblue"))price=7;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("penlgblack"))price=7;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("penlgred"))price=10;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("penlbblue"))price=10;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("penlbblack"))price=10;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("penlbred"))price=12;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("pencgblue"))price=6;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
		 	  st.executeUpdate(sql);
			} 
			
			if(s1.equals("pencgblack"))price=6;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("pencgred"))price=9;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("pencbblue"))price=8;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("pencbblack"))price=8;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("pencbred"))price=12;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			} 
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	
	public void addFiles(String s1,String s2) throws Exception
	{
		int c=Integer.parseInt(s2), price=0,tp=0;
		Connection C = new Connection();
		java.sql.Connection con = C.dbConnect();
		try 
		{
			java.sql.PreparedStatement st = null;
			String sql = "Select QTY from cart where Objects='"+s1+"'";
			st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{		c=c+Integer.parseInt(rs.getString(1));
				sql = "Update cart set QTY ='"+c+"' where Objects = '"+s1+"'";
				st = con.prepareStatement(sql);
				st.executeUpdate(sql);
			}
		else
		{
			sql = "Insert into cart values('"+s1+"','"+c+"','0')";
			System.out.println(sql);
			st = con.prepareStatement(sql);
			st.executeUpdate();
		}	
			if(s1.equals("filestb"))price=10;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("filesty"))price=10;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("filestr"))price=10;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("filepb"))price=20;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("filepy"))price=20;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("filepr"))price=20;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("filebxb"))price=25;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("filebxy"))price=25;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("filebxr"))price=25;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	
	public void addMarkers(String s1,String s2) throws Exception
	{
		int c=Integer.parseInt(s2), price=0,tp=0;
		Connection C = new Connection();
		java.sql.Connection con = C.dbConnect();
		try 
		{
			java.sql.PreparedStatement st = null;
			String sql = "Select QTY from cart where Objects='"+s1+"'";
			st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{		c=c+Integer.parseInt(rs.getString(1));
				sql = "Update cart set QTY ='"+c+"' where Objects = '"+s1+"'";
				st = con.prepareStatement(sql);
				st.executeUpdate(sql);
			}
		else
		{
			sql = "Insert into cart values('"+s1+"','"+c+"','0')";
			System.out.println(sql);
			st = con.prepareStatement(sql);
			st.executeUpdate();
		}	
			if(s1.equals("markerfb"))price=18;
			{  tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("markerfbl"))price=18;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("markerfr"))price=18;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("markerclb"))price=20;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("markerclbl"))price=20;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("markerclr"))price=20;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("markercb"))price=22;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("markercbl"))price=22;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
					
			if(s1.equals("markercr"))price=22;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			 st.executeUpdate(sql);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	
	public void addPencils(String s1,String s2) throws Exception
	{
		int c=Integer.parseInt(s2), price=0,tp=0;
		Connection C = new Connection();
		java.sql.Connection con = C.dbConnect();
		try 
		{
			java.sql.PreparedStatement st = null;
			String sql = "Select QTY from cart where Objects='"+s1+"'";
			st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{		c=c+Integer.parseInt(rs.getString(1));
				sql = "Update cart set QTY ='"+c+"' where Objects = '"+s1+"'";
				st = con.prepareStatement(sql);
				st.executeUpdate(sql);
			}
		else
		{
			sql = "Insert into cart values('"+s1+"','"+c+"','0')";
			System.out.println(sql);
			st = con.prepareStatement(sql);
			st.executeUpdate();
		}	
			if(s1.equals("penciln5"))price=20;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("penciln10"))price=40;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("penciln20"))price=80;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("pencilcm5"))price=25;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("pencilcm10"))price=50;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("pencilcm20"))price=100;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("pencila5"))price=25;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("pencila10"))price=50;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("pencila20"))price=100;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	
	public void addErasers(String s1,String s2) throws Exception
	{
		int c=Integer.parseInt(s2), price=0,tp=0;
		Connection C = new Connection();
		java.sql.Connection con = C.dbConnect();
		try 
		{
			java.sql.PreparedStatement st = null;
			String sql = "Select QTY from cart where Objects='"+s1+"'";
			st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{		c=c+Integer.parseInt(rs.getString(1));
				sql = "Update cart set QTY ='"+c+"' where Objects = '"+s1+"'";
				st = con.prepareStatement(sql);
				st.executeUpdate(sql);
			}
		else
		{
			sql = "Insert into cart values('"+s1+"','"+c+"','0')";
			System.out.println(sql);
			st = con.prepareStatement(sql);
			st.executeUpdate();
		}	
			if(s1.equals("eraserns"))price=2;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("erasernl"))price=3;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("erasernb"))price=3;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("erasercs"))price=2;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("erasercl"))price=3;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("erasercb"))price=3;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("eraseras"))price=3;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("eraseral"))price=4;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("eraserab"))price=4;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	
	public void addRulers(String s1,String s2) throws Exception
	{
		int c=Integer.parseInt(s2), price=0,tp=0;
		Connection C = new Connection();
		java.sql.Connection con = C.dbConnect();
		try 
		{
			java.sql.PreparedStatement st = null;
			String sql = "Select QTY from cart where Objects='"+s1+"'";
			st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{		c=c+Integer.parseInt(rs.getString(1));
				sql = "Update cart set QTY ='"+c+"' where Objects = '"+s1+"'";
				st = con.prepareStatement(sql);
				st.executeUpdate(sql);
			}
		else
		{
			sql = "Insert into cart values('"+s1+"','"+c+"','0')";
			System.out.println(sql);
			st = con.prepareStatement(sql);
			st.executeUpdate();
		}	
			if(s1.equals("rulern15"))price=5;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("rulern30"))price=10;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("rulern50"))price=60;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("rulerc15"))price=5;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("rulerc30"))price=10;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("rulerc50"))price=60;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("rulera15"))price=5;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("rulera30"))price=10;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
			
			if(s1.equals("rulera50"))price=60;
			{ tp=c*price;
			  sql = "Update cart set TP ='"+tp+"' where Objects = '"+s1+"'";
			  st = con.prepareStatement(sql);
			  st.executeUpdate(sql);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	public void clearCart() throws Exception
	{
		Connection C = new Connection();
		java.sql.Connection con = C.dbConnect();
		java.sql.PreparedStatement st = null;
		String sql = "Delete from cart";
		st = con.prepareStatement(sql);
		st.executeUpdate();
	}
	public int cartCount() throws Exception
	{
		int count = 0;
		Connection C = new Connection();
		java.sql.Connection con = C.dbConnect();
		java.sql.PreparedStatement st = null;
		String sql = "Select count(*) from cart";
		st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		while(rs.next())
			count = rs.getInt(1);
		return count;
	}
	public String FinalOrder() throws Exception
	{
		int max = 0;String uname="null";
		Connection C = new Connection();
		java.sql.Connection con = C.dbConnect();
		java.sql.PreparedStatement st = null;
		String nme = "Select QTY from cart where Objects='login'";
		st = con.prepareStatement(nme);
		ResultSet rs = st.executeQuery(nme);
		if(rs.next())
		uname = rs.getString(1);
		String sqlmax = "Select val from userinfo where Username = '"+uname+"'";
		st = con.prepareStatement(sqlmax);
		rs = st.executeQuery();
		if(rs.next())
			max = rs.getInt(1);
		max=max+1;
		String updatemax = "Update userinfo set val = '"+max+"' where Username = '"+uname+"'";
		st = con.prepareStatement(updatemax);
		st.execute(updatemax);
		String sql = "Insert into mydb.`order`(Username,OrderID) values('"+uname+"','"+(uname+max)+"')";
		st = con.prepareStatement(sql);
		st.execute();
		sql = "Select * from cart";
		st = con.prepareStatement(sql);
		rs = st.executeQuery();
		while(rs.next())
		{
			String object = rs.getString(1);
			String value = rs.getString(2);
			sql = "Update mydb.`order` set "+object+" = '"+value+"' where OrderId = '"+(uname+max)+"'";
			System.out.println(sql);
			st = con.prepareStatement(sql);
			if(object.equals("login"))
				continue;
			else
			st.execute(sql);
		}
		return (uname+max);
	}
}
