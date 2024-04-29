package handlers.appform;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import appform.AppForm;
import appform.AppFormService;
import handlers.Handler;
import person.PersonService;

public class AppformAddHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		request.setAttribute("view", "/appform/add.jsp");
		if(request.getMethod().equals("GET")){
			return "/person/info.jsp";
		}
		String iopath=AppFormService.path+"\\src\\main\\webapp\\app\\";
		System.out.println(iopath);
		int size = 100 * 1024 * 1024;
		MultipartRequest multipart;
		try {
			multipart = new MultipartRequest(request, iopath, size, "utf-8",
					new DefaultFileRenamePolicy());
			String id = multipart.getParameter("userid");
			PersonService pservice=new PersonService();
			int num=pservice.getPerson(id).getNum();
			File coverletter = multipart.getFile("coverletter");
			Path path1=Paths.get(iopath+coverletter.getName());
			Path pathCoverletter=Paths.get(iopath+"\\appform\\"+coverletter.getName());
			Files.move(path1,pathCoverletter, StandardCopyOption.REPLACE_EXISTING);
			File pofol = multipart.getFile("pofol");
			Path pathPofol=Paths.get(iopath+"\\popol\\"+pofol.getName());
			Path path2=Paths.get(iopath+pofol.getName());
			Files.move(path2,pathPofol, StandardCopyOption.REPLACE_EXISTING);
			File picture = multipart.getFile("picture");
			Path pathPicture=Paths.get(iopath+"\\image\\"+picture.getName());
			Path path3=Paths.get(iopath+picture.getName());
			Files.move(path3,pathPicture, StandardCopyOption.REPLACE_EXISTING);
			String cNm = coverletter.getName();
			String pofolNm = pofol.getName();
			String pNm = picture.getName();
			AppFormService service = new AppFormService();
			service.addForm(new AppForm(0, num, cNm, pofolNm, pNm));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/person/info.jsp";
	}
}
