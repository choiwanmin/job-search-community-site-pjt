package handlers.recruit;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import corp.CorpService;
import handlers.Handler;
import recruit.recruitdetail.RecruitDetail;
import recruit.recruitdetail.RecruitDetailService;
import recruit.recruitlist.RecruitList;
import recruit.recruitlist.RecruitListService;

public class RecruitDetailHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view = "/index.jsp";
		if (request.getMethod().equals("GET")) {
			// detail
			String wantedAuthNo = request.getParameter("wantedAuthNo");
			
			CorpService cservice = new CorpService();
			RecruitListService rlservice = new RecruitListService();
			RecruitDetailService rdservice = new RecruitDetailService();
			
			String busi_no = rlservice.getByWantedAuthNo(wantedAuthNo).getBusiNo();			
			String corpid = cservice.getByBusiNo(busi_no).getCorpid();
			String corp_nm = cservice.getByBusiNo(busi_no).getCorp_nm();
			String corp_addr = cservice.getByBusiNo(busi_no).getCorp_addr();
			RecruitList rl = rlservice.getByWantedAuthNo(wantedAuthNo);
			RecruitDetail rd = rdservice.getByWantedAuthNo(wantedAuthNo);
						
			request.setAttribute("wantedAuthNo", wantedAuthNo);
			request.setAttribute("corpid", corpid);
			request.setAttribute("corp_nm", corp_nm);
			request.setAttribute("corp_addr", corp_addr);
			request.setAttribute("busi_no", busi_no);
			request.setAttribute("rl", rl);
			request.setAttribute("rd", rd);
			
			String id = (String) request.getSession().getAttribute("loginId");
//			MemService mservice = new MemService();
//			mservice.
//			if(id.equals(view))
			view = "/recruit/recruitdetail.jsp";
		} else {
			// update
			RecruitListService rlservice = new RecruitListService();
			RecruitDetailService rdservice = new RecruitDetailService();
			
			String corpid = (String) request.getSession().getAttribute("loginId");

			CorpService cservice = new CorpService();
			String busiNo = (cservice.getByCorpId(corpid)).getBusi_no();
			String wantedTitle = request.getParameter("wantedTitle");
			String salTpCd = request.getParameter("salTpCd");
			String sal = request.getParameter("sal");
			String minEdubgIcd = request.getParameter("minEdubgIcd");
			String enterTpCd = request.getParameter("enterTpCd");
			String workRegion = request.getParameter("workRegion");
//			int regionCd;

			String jobsNm = request.getParameter("jobsNm");
//			int jobsCd;

			String regDt = request.getParameter("regDt");
			String closeDt = request.getParameter("closeDt");

			Date regDate = Date.valueOf(regDt);
			Date closeDate = Date.valueOf(closeDt);

//			int saveStatus = Integer.parseInt(request.getParameter("saveStatus"));
//			String saveStatus = request.getParameter("saveStatus");

			int minSal = Integer.parseInt(request.getParameter("minSal"));
			int maxSal = Integer.parseInt(request.getParameter("maxSal"));
			String jobCont = request.getParameter("jobCont");
//			Date smodifyDtm;
			String contactTelNo = request.getParameter("contactTelNo");
//			int detailType = Integer.parseInt(request.getParameter("detailType"));
			
			rlservice.editRecruitList(new RecruitList(busiNo, null, wantedTitle, salTpCd, sal, minEdubgIcd, enterTpCd,
					workRegion, 0, jobsNm, 0, regDate, closeDate, 0, null, true));
			rdservice.editRecruitDetail(new RecruitDetail(0, null, minSal, maxSal, null, null, jobCont, null, null,
					null, contactTelNo, 0, 0));
			view = "redirect:/recruit/recruitmylist.jsp";
		}
		return view;
	}

}
