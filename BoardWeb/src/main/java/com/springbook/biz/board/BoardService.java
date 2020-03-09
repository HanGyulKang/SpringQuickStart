package com.springbook.biz.board;

import java.util.List;

public interface BoardService {

	// CRUD 기능의 method 구현
	// 글 등록
	void insertBoard(BoardVO vo); // end insert

	// 글 수정
	void updateBoard(BoardVO vo); // end update

	// 글 삭제
	void deleteBoard(BoardVO vo); // end delete

	// 글 상세 조회
	BoardVO getBoard(BoardVO vo); // end getBoard

	// 글 목록 조회
	List<BoardVO> getBoardList(BoardVO vo); // end getBoardList

}