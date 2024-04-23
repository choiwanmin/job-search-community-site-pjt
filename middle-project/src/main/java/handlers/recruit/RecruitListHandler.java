package handlers.recruit;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handlers.Handler;
import recruit.recruitlist.RecruitList;
import recruit.recruitlist.RecruitListService;

public class RecruitListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int saveStatus = 1;
		
		RecruitListService rlservice = new RecruitListService();
		ArrayList<RecruitList> rl = rlservice.getAll(saveStatus);
		
		request.setAttribute("rl", rl);
		return "/recruit/recruitlist.jsp";
	}

}
