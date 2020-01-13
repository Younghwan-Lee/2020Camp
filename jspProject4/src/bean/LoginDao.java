package bean;
import java.sql.*;

public class LoginDao {
	private static ResultSet rs;
	public static boolean validate(LoginBean bean) {
		boolean status = false;
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM user432 WHERE email=? AND pass=?");
			
			ps.setString(1, bean.getEmail());
			ps.setString(2, bean.getPass());
			rs = ps.executeQuery();
			status = rs.next();
		} catch(Exception e) {}
		return status;
	}
}
