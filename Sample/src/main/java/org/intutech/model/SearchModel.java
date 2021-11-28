package org.intutech.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.intutech.bean.Source;
import org.intutech.util.DbUtil;


public class SearchModel {
	
	String result;
	public List<Source> getAll(String search) {
		System.out.println("It is a model");
		List<Source> contactList = new ArrayList<Source>();
		Connection con = DbUtil.getConnection();
		try {
			PreparedStatement stmt = con.prepareStatement("select * from musical where name=?");
			stmt.setString(1, search);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				Source c = new Source();
				c.setId(rs.getInt("id"));
				c.setName(rs.getString("name"));
				c.setImg(rs.getString("img"));
				c.setSound(rs.getString("sound"));
				c.setDisc(rs.getString("disc"));
				c.setTag(rs.getString("tag"));
				contactList.add(c);
				System.out.println("it is while loop of model");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return contactList;
	}
}
