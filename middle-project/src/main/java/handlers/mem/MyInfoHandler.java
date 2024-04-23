package handlers.mem;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import handlers.Handler;
import mem.Mem;
import mem.MemService;
import person.Person;
import person.PersonService;

public class MyInfoHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		String view = "/index.jsp";

		if (request.getMethod().equals("GET")) {// get 요청 id로 검색
			HttpSession session = request.getSession(false);
			// 로그인한 사람의 id를 session에서 꺼냄
			String loginId = (String) session.getAttribute("loginId");
			MemService service = new MemService();
			// loginId db에서 검색
			Mem m = service.getMem(loginId);
			PersonService pservice = new PersonService();
			Person p = pservice.getPerson(loginId);
			if (p != null) {
				if (p.getCareer().equals("N")) {
					p.setCareer("신입");
				} else {
					p.setCareer("경력");
				}
				if (p.getGender().equals("1")) {
					p.setGender("남자");
				} else {
					p.setGender("여자");
				}
				switch (p.getEducation()) {
				case "0":
					p.setEducation("학력 무관");
					break;
				case "3":
					p.setEducation("고졸");
					break;
				case "4":
					p.setEducation("대졸 (2년제)");
					break;
				case "5":
					p.setEducation("대졸 (4년제)");
					break;
				case "6":
					p.setEducation("석사");
					break;
				case "7":
					p.setEducation("박사");
					break;
				}
			}
			// 검색한 객체를 request에 담음. jsp에서 사용하려고
			request.setAttribute("m", m);
			request.setAttribute("p", p);
			request.setAttribute("view", "/mem/myinfo.jsp");
			if (p != null) {
				session.setAttribute("person", p);
			}
		} else {// post 요청 .수정
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			MemService service = new MemService();
			service.editMem(new Mem(id, pwd, 0));
			view = "redirect:/index.jsp";
		}
		return view;
	}

}
