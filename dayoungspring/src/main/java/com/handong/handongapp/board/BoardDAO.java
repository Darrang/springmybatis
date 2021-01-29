package com.handong.handongapp.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO{
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int insertBoard(BoardVO one) {
		System.out.println("insertBoard");
		return sqlSession.update("Board.insertBoard",one);
	}
	
	
	public int updateBoard(BoardVO one) {
		System.out.println("updateBoard");
		return sqlSession.update("Board.updateBoard",one);
	}
	
	
	public int deleteBoard(int seq) {
		System.out.println("deleteBoard");
		return sqlSession.delete("Board.deleteBoard",seq);
	}
	
	 
	public BoardVO getBoard(int seq) {
		System.out.println("getBoard");
		return sqlSession.selectOne("Board.getBoard",seq);
	}
	
	
	public List<BoardVO> getBoardList(){
		System.out.println("getBoardList");
		return sqlSession.selectList("Board.getBoardList");
	}
}
	
	
