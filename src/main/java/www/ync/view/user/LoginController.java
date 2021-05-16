package www.ync.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import www.ync.kr.user.UserVO;
import www.ync.kr.user.impl.UserDAO;
import www.ync.view.controller.Controller;

public class LoginController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("로그인 처리");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		//DB 연동 처리
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPassword(password);
		UserDAO userDAO = new UserDAO();
		UserVO user = userDAO.getUser(vo);
		
		//화면 네비게이션
		if( user != null ){
			return "getBoardList.do";
		}
		else {
			return "login.jsp";
		}
	}

}
