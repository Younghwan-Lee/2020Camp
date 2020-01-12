package jsp3;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn;	//DB 접근 객체
	private PreparedStatement pstmt;
	private ResultSet rs;		//정보 담을 변수
	
	public UserDAO() {
		try {
			String dbURL="jdbc:mysql://db4free.net:3306/db_camp?serverTimezone=UTC";
			String dbID = "younghwan";
			String dbPassword = "828282inin";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int join(User user) {
		String SQL = "INSERT INTO user VALUES(?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}
}
