package controller.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MultiController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String crud = req.getParameter("crud");
		String crudMessage;
		switch(crud.toUpperCase()) {
			case "CREATE":
				crudMessage="입력처리 요청입니다";break;
			case "READ":
				crudMessage="조회처리 요청입니다";break;
			case "UPDATE":
				crudMessage="수정처리 요청입니다";break;
			default:crudMessage="삭제처리 요청입니다";				
		}
		req.setAttribute("crudMessage", crudMessage);
		req.getRequestDispatcher("/servlet13/Servlet.jsp").forward(req, resp);
		
	}//////////////
}
