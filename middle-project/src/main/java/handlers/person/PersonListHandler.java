package handlers.person;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handlers.Handler;
import person.Person;
import person.PersonService;

public class PersonListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view = "/person/list.jsp";
		ArrayList<Person> list=new ArrayList<>();
		PersonService service = new PersonService();
		list=service.getAll();
		if (request.getMethod().equals("POST")) {
			String education = request.getParameter("education");
			String career = request.getParameter("career");
			String[] jobCd =request.getParameterValues("jobCd");// "1"
			String jcd="";
			if(jobCd!=null) {
				for(int i =0; i<jobCd.length; i++) {
					   jcd+=jobCd[i]+" , ";
				}
				}
			Person p=new Person(0, null, null, null, education, career, null, null, null, jcd, null);
			list = service.recommend(p);
		}
		request.setAttribute("list", list);
		request.setAttribute("view", view);
		return "/index.jsp";
	}

}
