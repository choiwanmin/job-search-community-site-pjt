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

public class RecruitAddHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view = "/index.jsp";
		if (request.getMethod().equals("POST")) {
			String corpid = (String) request.getSession().getAttribute("loginId");

			CorpService cservice = new CorpService();
			String busiNo = (cservice.getByCorpId(corpid)).getBusi_no(); // 기업-사업자등록번호(corp테이블-busi_no컬럼)
//			String wantedAuthNo; // 공고-공고번호
			String wantedTitle = request.getParameter("wantedTitle"); // 공고-공고제목
			String salTpCd = request.getParameter("salTpCd"); // 공고-임금조건
			String sal = request.getParameter("sal"); // 공고-임금조건에 따른 임금
			String minEdubgIcd = request.getParameter("minEdubgIcd"); // 공고-최소학력
			String enterTpCd = request.getParameter("enterTpCd"); // 공고-경력
			String workRegion = request.getParameter("workRegion"); // 공고-근무지역 전체 주소
//			int regionCd =  O// 공고-근무지역코드(ex.경기도 성남시)

			String jobsNm = request.getParameter("jobsNm"); // 공고-직종이름
//			int jobsCd = response. // 공고-직종코드

			String regDt = request.getParameter("regDt"); // 공고-등록일
			String closeDt = request.getParameter("closeDt"); // 공고-마감일

			Date regDate = Date.valueOf(regDt);
			Date closeDate = Date.valueOf(closeDt);

			int saveStatus = Integer.parseInt(request.getParameter("saveStatus")); // 공고저장상태(ex.임시저장, 등록)
//			String saveStatus = request.getParameter("saveStatus"); // 공고저장상태(ex.임시저장, 등록)

			int minSal = Integer.parseInt(request.getParameter("minSal")); // 공고-최소임금금액
			int maxSal = Integer.parseInt(request.getParameter("maxSal")); // 공고-최대임금금액
			String jobCont = request.getParameter("jobCont"); // 공고-공고상세
//			Date smodifyDtm; // 공고-최종수정일
			String contactTelNo = request.getParameter("contactTelNo"); // 공고-공고 담당 전화번호
//			int detailType = Integer.parseInt(request.getParameter("detailType")); // 공고상태(ex.진행, 마감, 삭제)

			RecruitListService rlservice = new RecruitListService();
			RecruitDetailService rdservice = new RecruitDetailService();

			rlservice.addNewRecruitList(new RecruitList(busiNo, null, wantedTitle, salTpCd, sal, minEdubgIcd, enterTpCd,
					workRegion, 0, jobsNm, 0, regDate, closeDate, saveStatus, null, true));
			rdservice.addNewRecruitDetail(new RecruitDetail(0, null, minSal, maxSal, null, null, jobCont, null, null,
					null, contactTelNo, 0, 0));
			view = "redirect:/recruit/recruitlist.do?id=" + corpid + "&busiNo=" + busiNo;
		} else {
			view = "/recruit/recruitadd.jsp";
			request.setAttribute("view", view);
		}
		return view;
	}

}
