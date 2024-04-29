package handlers.person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import handlers.Handler;
import person.Person;
import person.PersonService;

public class PersonAddHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String view = "/person/info.jsp"; // get 방식일때 이동할 뷰페이지경로
		HttpSession session = request.getSession(false);
		String loginId = (String) session.getAttribute("loginId");
		PersonService service = new PersonService();
		Person p = service.getPerson(loginId);
		if (request.getMethod().equals("POST")) {// 전송방식이 post냐?
			String userid = request.getParameter("userid");
			if(service.getPerson(userid) == null) {
				String jcd = "";
				String jNm = "";
				String usertel =request.getParameter("usertel");
				String email = request.getParameter("email");
				String education = request.getParameter("education");// "1"
				String career = request.getParameter("career");// "1"
				System.out.println(career);
				String skill = request.getParameter("skill");
				String gender = request.getParameter("gender");// "1"
				String age = request.getParameter("age");// "1"
				String[] jobCd =request.getParameterValues("jobCd");// "1"
				if(jobCd!=null) {
					for(int i =0; i<jobCd.length; i++) {
							String []a=jobCd[i].split(",");
						   jcd+=a[0]+" , ";
						  jNm+=a[1]+" , ";
					}
					}
				service.addPerson(new Person(0,userid,usertel,email,education,career,skill,gender,age,jcd,jNm));
			}else {
				request.setAttribute("p", p);
				if (p != null) {
					session.setAttribute("person", p);
				}
			}
			
		}else {
			request.setAttribute("view", "/person/personadd.jsp");
		}

		return view;
	}
	

}
