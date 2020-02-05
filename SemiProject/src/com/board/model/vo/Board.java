package com.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Board implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7545560382366343544L;

	private int BNO;
	private int BTYPE;
	private String BTITLE;
	private String BCONTENT;
	private String BWRITER;
	private int BCOUNT;
	private Date BDATE;
	
	public Board() {}

	public Board(String bTITLE, String bCONTENT, String bWRITER) {
		super();
		BTITLE = bTITLE;
		BCONTENT = bCONTENT;
		BWRITER = bWRITER;
	}

	public Board(int bNO, int bTYPE, String bTITLE, String bCONTENT, String bWRITER, int bCOUNT, Date bDATE) {
		super();
		BNO = bNO;
		BTYPE = bTYPE;
		BTITLE = bTITLE;
		BCONTENT = bCONTENT;
		BWRITER = bWRITER;
		BCOUNT = bCOUNT;
		BDATE = bDATE;
	}

	public int getBNO() {
		return BNO;
	}

	public void setBNO(int bNO) {
		BNO = bNO;
	}

	public int getBTYPE() {
		return BTYPE;
	}

	public void setBTYPE(int bTYPE) {
		BTYPE = bTYPE;
	}

	public String getBTITLE() {
		return BTITLE;
	}

	public void setBTITLE(String bTITLE) {
		BTITLE = bTITLE;
	}

	public String getBCONTENT() {
		return BCONTENT;
	}

	public void setBCONTENT(String bCONTENT) {
		BCONTENT = bCONTENT;
	}

	public String getBWRITER() {
		return BWRITER;
	}

	public void setBWRITER(String bWRITER) {
		BWRITER = bWRITER;
	}

	public int getBCOUNT() {
		return BCOUNT;
	}

	public void setBCOUNT(int bCOUNT) {
		BCOUNT = bCOUNT;
	}

	public Date getBDATE() {
		return BDATE;
	}

	public void setBDATE(Date bDATE) {
		BDATE = bDATE;
	}

	@Override
	public String toString() {
		return "Board [BNO=" + BNO + ", BTYPE=" + BTYPE + ", BTITLE=" + BTITLE + ", BCONTENT=" + BCONTENT + ", BWRITER="
				+ BWRITER + ", BCOUNT=" + BCOUNT + ", BDATE=" + BDATE + "]";
	}
	
	
	
}
