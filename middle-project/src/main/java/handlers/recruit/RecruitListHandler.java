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
		GeneralPage<RecruitList> page = new GeneralPage<>();
		ArrayList<ArrayList<RecruitList>> paging = null;
		String num = request.getParameter("num");
		int rnum = 1;
		if (num != null) {
			rnum = Integer.parseInt(num);
		}
		int pnum = rnum;
		if (pnum >= 3) {
			pnum = pnum - 2;
		} else {
			pnum = 1;
		}
		int saveStatus = 1;

		rlList = rlservice.getAll(saveStatus);
		paging = page.paging(rlList, 10);
		request.setAttribute("pnum", pnum - 1);
		request.setAttribute("pnume", pnum + 3);
		request.setAttribute("rlList", paging.get(rnum - 1));
		request.setAttribute("view", "/recruit/recruitlist.jsp");
		request.setAttribute("paging", paging);
		return view;
	}
}
