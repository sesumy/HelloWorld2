package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Models.UserModel;

public class UserDAO {
	private static Connection conn=null;
	private static PreparedStatement psmt=null;
	private static ResultSet rs=null;
	
	public static  ArrayList<UserModel> tumKullaniciGetir()throws SQLException{
		
		ArrayList <UserModel> tumKullanici =new ArrayList<UserModel>();
		try {
			conn=ConnectionDAO.getConnection();
			psmt=(PreparedStatement) conn.prepareStatement("Select * from users");
			rs = psmt.executeQuery();
			while(rs.next()){	
				UserModel user=new UserModel();
				
				user.setUserId(rs.getInt(1));
				user.setPassword(rs.getString(2));
				tumKullanici.add(user);	
			}
			conn.close();
			
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try{
				conn.close();
				psmt.close();
				rs.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		return tumKullanici;
	}
	
	
	
	

}
