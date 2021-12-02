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
				
				System.out.println(rs.getString("img"));
				System.out.println(rs.getString("sound"));
				
				contactList.add(c);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return contactList;
	}
	public boolean Save(Source co) {
		boolean flag = false;
		Connection con = DbUtil.getConnection();
		try {
			 	PreparedStatement stmt = con.prepareStatement("insert into musical values(?,?,?,?,?,?)");
			 	stmt.setInt(1, co.getId());
			 	stmt.setString(2, co.getName());
			 	stmt.setString(3, co.getImg());
			 	stmt.setString(4, co.getSound());
			 	stmt.setString(5, co.getDisc());
			 	stmt.setString(6, co.getTag());
			 	int count = stmt.executeUpdate();
			 	if(count>0) {
			 		flag = true;
			 	}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DbUtil.closeConnection(con);
		}
		return flag;
	}
	
}
