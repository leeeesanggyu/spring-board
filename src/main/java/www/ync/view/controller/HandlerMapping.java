package www.ync.view.controller;

import java.util.HashMap;
import java.util.Map;

import www.ync.view.board.DeleteBoardController;
import www.ync.view.board.GetBoardController;
import www.ync.view.board.GetboardLisrController;
import www.ync.view.board.InsertBoardController;
import www.ync.view.board.UpdateBoardController;
import www.ync.view.user.LoginController;
import www.ync.view.user.LogoutController;

public class HandlerMapping {
	private Map<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/login.do", new LoginController());
		mappings.put("/getBoardList.do", new GetboardLisrController());
		mappings.put("/getBoard.do", new GetBoardController());
		mappings.put("/insertBoard.do", new InsertBoardController());
		mappings.put("/updateBoard.do", new UpdateBoardController());
		mappings.put("/deleteBoard.do", new DeleteBoardController());
		mappings.put("/logout.do", new LogoutController());
	
	}
	
	public Controller getController(String path) {
		return mappings.get(path);
	}
}
