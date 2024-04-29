package handlers.recruit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import corp.CorpService;
import handlers.Handler;
import recruit.recruitdetail.RecruitDetailService;
import recruit.recruitlist.RecruitListService;

public class RecruitDelHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String corpid = (String) request.getSession().getAttribute("loginId");
		CorpService cservice = new CorpService();
		String busiNo = (cservice.getByCorpId(corpid)).getBusi_no();

		String wantedAuthNo = request.getParameter("wantedAuthNo");

		RecruitListService rlservice = new RecruitListService();
		RecruitDetailService rdservice = new RecruitDetailService();

		rlservice.delRecruitList(busiNo, wantedAuthNo);
		rdservice.delRecruitDetail(wantedAuthNo);

		return "redirect:/recruit/recruitmylist.do?mylist=0&id=" + corpid + "&busiNo=" + busiNo;
	}

}
