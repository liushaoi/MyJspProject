import java.sql.*;

public class JDBCDemo {
	static final String URL = "jdbc:mysql://localhost:3306/spring";
	static final String USER = "root";
	static final String PWD = "123";
	public static void update() {
		PreparedStatement pstmt = null;
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(URL, USER, PWD);
			
			/*//Statement操作数据库
			 * stmt = conn.createStatement();
			 * 
			 * // String sql = "insert into tb_account values(3,'ww','2500')"; // String sql
			 * = "update tb_account set username='zl' where id=2"; String sql =
			 * "delete from tb_account where id=3"; int count = stmt.executeUpdate(sql);
			 */
			//PreparedStatement操作数据库
			String sql = "insert into tb_account values(?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 5);
			pstmt.setString(2, "zz");
			pstmt.setInt(3, 5000);
			int count = pstmt.executeUpdate();
			if(count>0) {
				System.out.println("操作成功！");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
			try {
				if(conn != null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	}
	public static void query() {
		Statement stmt = null;
		Connection conn = null;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(URL, USER, PWD);
		stmt = conn.createStatement();
		
		String sql = "select id,username from tb_account ";
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("username");
			
			System.out.print("ID:" + id);
			System.out.println(" name:" + name);
			System.out.println();
		}
		
		rs.close();
		stmt.close();
		conn.close();
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		try {
			if(stmt != null) stmt.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		try {
			if(conn != null) conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	}
	public static void main(String[] args) {
		update();
	}
}
