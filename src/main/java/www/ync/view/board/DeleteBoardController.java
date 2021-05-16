package www.ync.view.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import www.ync.kr.board.BoardVO;
import www.ync.kr.board.impl.BoardDAO;
import www.ync.view.controller.Controller;

public class DeleteBoardController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("글 삭제 처리");
		
		//	1. 사용자 입력 정보 추출
		String seq = request.getParameter("seq");

		//	2. DB 연동 처리
		BoardVO vo = new BoardVO();
		vo.setSeq(Integer.parseInt(seq));
		
		BoardDAO boardDAO = new BoardDAO();
		boardDAO.deleteBoard(vo);
		
		//	3. 화면 네비게이션
		return "getBoardList.do";
	}

}
