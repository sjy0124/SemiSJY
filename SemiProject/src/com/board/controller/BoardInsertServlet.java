package com.board.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.model.service.BoardService;
import com.board.model.vo.Board;

/**
 * Servlet implementation class BoardInsertServlet
 */
@WebServlet("/bInsert.bo")
public class BoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String btitle = request.getParameter("btitle");
		String writer = request.getParameter("empId");
		String content = request.getParameter("bcontent");		
		String date = request.getParameter("bdate");
		
		
		Date writeDate = null;
		
		if(date != "" && date != null) {
			String[] dateArr = date.split("-");
			int[] intArr = new int[dateArr.length];
			
			for(int i=0; i<dateArr.length; i++) {
				intArr[i] = Integer.parseInt(dateArr[i]);
			}
			
			writeDate = new Date(new GregorianCalendar(
					intArr[0],intArr[1]-1,intArr[2]).getTimeInMillis());
		}else {
			writeDate = new Date(new GregorianCalendar().getTimeInMillis());
		}
		
		Board b = new Board();
		
		b.setBTITLE(btitle);
		b.setBWRITER(writer);
		b.setBCONTENT(content);
		b.setBDATE(writeDate);
		
		BoardService bs = new BoardService();
		
		int result = bs.insertBoard(b);
		
		if(result > 0) {
			System.out.println("등록!!");
			response.sendRedirect("selectList.bo");
		}else {
			request.setAttribute("msg", "게시판 등록 실패!");
			
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
