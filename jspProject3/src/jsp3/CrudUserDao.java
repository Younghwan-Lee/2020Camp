package jsp3;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import jsp3.CrudUser;
public class CrudUserDao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://db4free.net:3306/db_camp?serverTimezone=UTC", "younghwan", "828282inin");
		} catch(Exception e) {System.out.println(e);}
		return con;
	}
	
	public static int save(CrudUser u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"INSERT INTO register(name,password,email,sex,country) VALUES(?,?,?,?,?)");
			ps.setString(1,  u.getName());
			ps.setString(2,  u.getPassword());
			ps.setString(3,  u.getEmail());
			ps.setString(4,  u.getSex());
			ps.setString(5,  u.getCountry());
			status = ps.executeUpdate();
		} catch(Exception e) {System.out.println(e);}
		return status;
	}
	
	public static int update(CrudUser u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	        		"UPDATE register SET name=?,password=?,email=?,sex=?,country=? WHERE id=?");  
	        ps.setString(1,u.getName());  
	        ps.setString(2,u.getPassword());  
	        ps.setString(3,u.getEmail());  
	        ps.setString(4,u.getSex());  
	        ps.setString(5,u.getCountry());  
	        ps.setInt(6,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	public static int delete(CrudUser u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("DELETE FROM register WHERE id=?");
			ps.setInt(1, u.getId());
			status = ps.executeUpdate();
		} catch(Exception e) {System.out.println(e);}
		return status;
	}
	
	public static List<CrudUser> getAllRecords() {
		List<CrudUser> list = new ArrayList<CrudUser>();
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM register");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				CrudUser u = new CrudUser();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
				list.add(u);
			}
		} catch(Exception e) {System.out.println(e);}
		return list;
	}
	
	public static CrudUser getRecordById(int id) {
		CrudUser u = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM register WHERE id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				u = new CrudUser();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));			
			}
		} catch(Exception e) {System.out.println(e);}
		return u;
	}
}
