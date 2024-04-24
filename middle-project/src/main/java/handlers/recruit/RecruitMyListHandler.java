package handlers.recruit;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import corp.CorpService;
import handlers.Handler;
import mem.MemService;
import recruit.recruitlist.RecruitList;
import recruit.recruitlist.RecruitListService;

public class RecruitMyListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		// 저장상태가(임시저장:0, 등록:1) 1인 공고만 전달
		String view = "/corp/info.jsp";
		String id = (String) request.getSession().getAttribute("loginId");

		MemService mservice = new MemService();
		CorpService cservice = new CorpService();
		RecruitListService rlservice = new RecruitListService();
		ArrayList<RecruitList> rlList = new ArrayList<RecruitList>();

		String busiNo = "";

		if (mservice.getMem(id).getType() == 2) {
			busiNo = (cservice.getByCorpId(id)).getBusi_no();
			rlList = rlservice.getByBusiNo(busiNo);
		}

		request.setAttribute("id", id);
		request.setAttribute("busiNo", busiNo);
		request.setAttribute("rlList", rlList);
		request.setAttribute("view", "/recruit/recruitmylist.jsp");
		return view;
	}

}
