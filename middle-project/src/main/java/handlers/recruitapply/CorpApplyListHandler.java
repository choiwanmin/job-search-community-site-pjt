package handlers.recruitapply;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import corp.Corp;
import corp.CorpService;
import handlers.Handler;
import recruitApply.RecruitApply;
import recruitApply.RecruitApplyService;

public class CorpApplyListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//get일 때 사용
		//회사>공고별 지원자 추리기
		//회사가 공고 낸 리스트는 완민님이 리쿠르트 리스트 VO로 list 제작
		//해당 공고의 지원자 리스트는 공고 번호로 지원자 받아오기
		String view = "/index.jsp";
		String wanted_auth_no = (String)request.getSession().getAttribute("wanted_auth_no");
		
		RecruitApplyService reservice = new RecruitApplyService();
		ArrayList<RecruitApply> list = reservice.getauthNo(wanted_auth_no);
		
		request.setAttribute("view", "/corpApply/list.jsp");
		request.setAttribute("list", list);
		
		return view;
	}

}
