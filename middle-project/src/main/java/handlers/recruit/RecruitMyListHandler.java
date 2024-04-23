package handlers.recruit;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import corp.CorpService;
import handlers.Handler;
import recruit.recruitlist.RecruitList;
import recruit.recruitlist.RecruitListService;

public class RecruitMyListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String corpid = (String) request.getSession().getAttribute("loginId");
		CorpService cservice = new CorpService();
		String busiNo = (cservice.getByCorpId(corpid)).getBusi_no();

		RecruitListService rlservice = new RecruitListService();
		
		ArrayList<RecruitList> rlList = rlservice.getByBusiNo(busiNo);
		
		request.setAttribute("corpid", corpid);
		request.setAttribute("busiNo", busiNo);
		request.setAttribute("rlList", rlList);
		
		return "/recruit/recruitmylist.jsp";
	}

}
