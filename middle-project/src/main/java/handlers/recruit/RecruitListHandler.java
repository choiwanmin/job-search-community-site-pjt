package handlers.recruit;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import handlers.Handler;
import mem.MemService;
import page.GeneralPage;
import recruit.recruitlist.RecruitList;
import recruit.recruitlist.RecruitListService;

public class RecruitListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view = "/index.jsp";
		String id = (String) request.getSession().getAttribute("loginId");

		MemService mservice = new MemService();
		RecruitListService rlservice = new RecruitListService();
		ArrayList<RecruitList> rlList = new ArrayList<RecruitList>();
		int saveStatus = 1;

		if (mservice.getMem(id).getType() == 1) {
			rlList = rlservice.getAll(saveStatus);
		}
		request.setAttribute("rlList", rlList);
		request.setAttribute("view", "/recruit/recruitlist.jsp");
		return view;
	}
}
