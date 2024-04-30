package handlers.person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handlers.Handler;
import person.Person;
import person.PersonService;

public class PersonInfoHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view="/person/info.jsp";
		String id=(String) request.getSession(false).getAttribute("loginId");
		PersonService service=new PersonService();
		Person p=service.getPerson(id);
		request.setAttribute("person", p);
		return view;
	}

}
