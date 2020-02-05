package com.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.model.vo.Member;
import com.member.service.MemberService;

/**
 * Servlet implementation class AdminMemberUpdateServlet
 */
@WebServlet("/mDetail.em")
public class AdminMemberDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemberDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int no = Integer.parseInt(request.getParameter("no")); 
		
		Member m = new Member();
		
		MemberService ms = new MemberService();
		
		 m = ms.adminMemberDetail(no);
		 
		 if(m != null) {
			 
			 m.getAddress();
			 request.setAttribute("member",m);
			 request.getRequestDispatcher("views/admin_detail_user.jsp").forward(request, response);
			 
		 }else {
			 System.out.println("상세화면 보기 실패");
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
