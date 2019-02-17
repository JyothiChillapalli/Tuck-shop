package com;

import java.sql.DriverManager;

public class Connection {
	public static java.sql.Connection dbConnect() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
        // Setup the connection with the DB
		java.sql.Connection con = DriverManager
                .getConnection("jdbc:mysql://localhost/mydb?"
                        + "user=root&password=root");
		if (con != null)
			System.out.println("DB CONNECTED");
		return con;
	}
}
