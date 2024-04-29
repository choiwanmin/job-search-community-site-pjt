package handlers.person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import appform.AppForm;
import appform.AppFormService;
import handlers.Handler;
import person.Person;
import person.PersonService;

public class PersonDetailHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view="/person/info.jsp";
		PersonService pservice=new PersonService();
		AppFormService aservice=new AppFormService();
		String id=request.getParameter("id");
		//int num=Integer.parseInt(request.getParameter("num"));  >> 실제로 사용할 코드
		int num=pservice.getPerson(id).getNum();
		Person p=pservice.getByNum(num);
		AppForm a=aservice.getForm(num);
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
		request.setAttribute("person", p);
		request.setAttribute("appform", a);
		request.setAttribute("view", "/person/detail.jsp");
		return view;
	}

}
