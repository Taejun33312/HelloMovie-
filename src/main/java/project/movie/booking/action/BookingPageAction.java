package project.movie.booking.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import movie.movie.db.MovieDAO;
import project.movie.screen.db.ScreenDAO;

public class BookingPageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : BookingPageAction_execute() 호출 ");
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		ActionForward forward = new ActionForward();
//		if(id == null) {
//			forward.setPath("./Login.me");
//			forward.setRedirect(true);
//			
//			return forward;
//		}
	
		// 영화 객체 정보/ 극장 객체 정보
		MovieDAO movieDAO = new MovieDAO();
		ScreenDAO screenDAO = new ScreenDAO();
		
		List dailyList = movieDAO.getmovieAPI();
//		List timeList = movieDAO.getTime(M_num);
//		movieDAO.getTime(M_num);
		
		request.setAttribute("screenList", screenDAO.screenList());
		request.setAttribute("dailyList", dailyList);
//		request.setAttribute("timeList", timeList);
//		request.setAttribute("timeList", movieDAO.timeList(null));
		
		
//		response.setContentType("text/html charset=utf-8");
//		PrintWriter out = response.getWriter();
//		
//		out.print(" '{"tome":aaaa}' ");
		
		forward.setPath("./booking/bookingPage.jsp");
		forward.setRedirect(false);
		
		return forward;
	}
}
