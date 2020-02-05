package com.notice.model.service;

import static com.member.common.JDBCTemplate.close;
import static com.member.common.JDBCTemplate.commit;
import static com.member.common.JDBCTemplate.getConnection;
import static com.member.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.board.model.vo.Board;
import com.notice.model.dao.NoticeDao;
import com.notice.model.vo.Notice;

public class NoticeService {
	
	private NoticeDao nDao = new NoticeDao();

	public ArrayList<Notice> selectList() {
		Connection con = getConnection();
		
		ArrayList<Notice> List = nDao.selectList(con);
		
		close(con);
		
		return List;
	}

	public int insertNotice(Notice n) {
		Connection con = getConnection();
		
		int result = nDao.insertNotice(con,n);
		
		if(result >=1)commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}


}
