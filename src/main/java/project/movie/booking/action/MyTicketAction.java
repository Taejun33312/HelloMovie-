package project.movie.booking.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.movie.booking.db.BookingDAO;

public class MyTicketAction implements Action {

	@Override
	public ActionForward execute(
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MyTicketAction_execute 호출 ");
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println(" 아이디 : " + id);
			
		ActionForward forward = new ActionForward();
		if(id == null) {
			forward.setPath("./Login.me");
			forward.setRedirect(true);
			return forward;			
		}
		
		// Mem_num 정보 가져오기
		int Mem_num = Integer.parseInt(request.getParameter("Mem_num"));
		//int B_num = Integer.parseInt(request.getParameter("B_num"));

		BookingDAO dao = new BookingDAO();
		List totalList = dao.ticketInfo(Mem_num);
		
		System.out.println(" M : " + totalList);
		
		request.setAttribute("totalList", totalList);		
		
		forward.setPath("./booking/myTicket.jsp");
		forward.setRedirect(false);
		
		return forward ;

	}

}
