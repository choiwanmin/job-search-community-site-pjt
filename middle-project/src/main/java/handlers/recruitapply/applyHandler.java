package handlers.recruitapply;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handlers.Handler;
import recruit.recruitlist.RecruitListService;

public class applyHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//공고 최초 지원하기
			String view = "/index.jsp";
			String msg = "";
				
			//post=처음 회사 정보 등록(db에 추가)
			if(request.getMethod().equals("POST")) {
				//지원자 ID
				String personid = (String)request.getSession().getAttribute("loginId");
					
				//공고 번호 가져오기
				String wanted_auth_no = request.getParameter("wanted_auth_no");
					
				//List에서 필요 내용 가져오기(공고 번호로 select>추가 요청)
				 RecruitListService list = new RecruitListService();
					
			
					
				String busi_no=request.getParameter("busi_no");
					
					
				//CorpService service = new CorpService();
				//service.addCorp(new Corp(0,corpid,corp_nm,corp_addr,busi_no));
				
				view = "/index.jsp";
			}else {
				request.setAttribute("view", "/corp/add.jsp");
			}
			return view;
	}

}
