package handlers.corp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import corp.Corp;
import corp.CorpService;
import handlers.Handler;


public class EditHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//get=처음에 회사 정보 등록 페이지로 이동
		String view = "/corp/info.jsp";

		//post=처음 회사 정보 등록(db에 추가)
		if(request.getMethod().equals("POST")) {
			String corpid = (String)request.getSession().getAttribute("loginId");
			CorpService service = new CorpService();
			Corp c = service.getByCorpId(corpid);
			
			//우편번호 + 주소 +상세주소(수정)
			String corp_addr = request.getParameter("p_code")+" "+request.getParameter("addr")+" "+request.getParameter("addrdet");
			
			// 기업 정보 수정
			service.editCorp(c.getNum(), corp_addr);
			
			view = "redirect:/mem/corpedit.do";
		}else {
			String corpid = (String)request.getSession().getAttribute("loginId");
			CorpService service = new CorpService();
			Corp c = service.getByCorpId(corpid);
			System.out.println(c);
			if(c != null) {
				request.setAttribute("c", c);
			}
			request.setAttribute("view", "/corp/edit.jsp");
		}
		return view;
	}

}
