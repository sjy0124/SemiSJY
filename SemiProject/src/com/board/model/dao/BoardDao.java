package com.board.model.dao;

import static com.member.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.board.model.vo.Board;

public class BoardDao {
	
	private Properties prop;
	
	public BoardDao() {
		prop = new Properties();
		
		String filePath = Board.class.getResource("/config/board-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}

	public int insertBoard(Connection con, Board b) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String sql = prop.getProperty("insertBoard");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			System.out.println(b.toString());
			
			pstmt.setString(1, b.getBTITLE());
			pstmt.setString(2, b.getBCONTENT());
			pstmt.setString(3, b.getBWRITER());
			pstmt.setDate(4, b.getBDATE());
			result = pstmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<Board> selectList(Connection con) {

		ArrayList<Board> list = null;
		
		Statement stmt = null;
		ResultSet rset = null;		
		String sql = prop.getProperty("selectList");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			list = new ArrayList<Board>();
			
			while(rset.next()) {
				Board b = new Board();
				
				b.setBNO(rset.getInt(1));
				b.setBTITLE(rset.getString("btitle"));
				b.setBCONTENT(rset.getString("bcontent"));
				b.setBWRITER(rset.getString("bwriter"));
				b.setBCOUNT(rset.getInt("bcount"));
				b.setBDATE(rset.getDate("bdate"));
				
				list.add(b);
				
			}
								
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				close(rset);
				close(stmt);
			}
						
		return list;
	}
	
}
