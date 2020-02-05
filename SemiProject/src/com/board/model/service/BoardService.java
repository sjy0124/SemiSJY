package com.board.model.service;

import static com.member.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.board.model.dao.BoardDao;
import com.board.model.vo.Board;

public class BoardService {
	private BoardDao bDao = new BoardDao();

	public ArrayList<Board> selectList() {
		
		Connection con = getConnection();
		
		ArrayList<Board> List = bDao.selectList(con);
		
		close(con);
		
		return List;
	}
	
	public int insertBoard(Board b) {
		Connection con = getConnection();
		
		int result = bDao.insertBoard(con,b);
		
		if(result >=1)commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
				
	}

	
}
