package handlers.person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handlers.Handler;
import person.Person;
import person.PersonService;

public class PersonEditHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String view = "/index.jsp"; // get 방식일때 이동할 뷰페이지경로
		PersonService service = new PersonService();
		String msg = "";
		String userid = (String) request.getSession().getAttribute("loginId");
		System.out.println(userid);
		Person p=service.getPerson(userid);
		request.setAttribute("person", p);
		if (request.getMethod().equals("POST")) {// 전송방식이 post냐?
			String jcd = "";
			String jNm = "";
			String usertel = request.getParameter("usertel");
			String email = request.getParameter("email");
			String education = request.getParameter("education");// "1"
			String career = request.getParameter("career");// "1"
			String skill = request.getParameter("skill");
			String gender = request.getParameter("gender");// "1"
			String age = request.getParameter("age");// "1"
			String[] jobCd = request.getParameterValues("jobCd");// "1"
			if (jobCd != null) {
				for (int i = 0; i < jobCd.length; i++) {
					String[] a = jobCd[i].split(",");
					if(a.length>=2) {
						jcd += a[0] + ",";
						jNm += a[1]+ ",";
						System.out.println(jNm+" : " + jcd);
					}else {
						msg = "해당 분야의 정보가 없습니다.";
						System.out.println(jcd);
						System.out.println(jNm);
						System.out.println(msg);
					}
					
				}
			}
			service.editPerson(new Person(0, userid, usertel, email, education, career, skill, gender, age, jcd, jNm));
			
		} else {
			request.setAttribute("view", "/mem/editmyinfo.jsp");
		}

		return view;
	}

}
