package handlers.appform;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import handlers.Handler;

public class AppFormDownHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String fname=request.getParameter("fname");
		String type=request.getParameter("type");
		String path=request.getServletContext().getRealPath("/app/");
		File f=null;
		if(type.equals("pofol")) {
			f=new File(path+"\\popol\\"+fname);
		}
		else {
			f=new File(path+"\\appform\\"+fname);
		}
		FileInputStream fileinput;
		try {
			fileinput = new FileInputStream(f.getPath());
			fname=new String(fname.getBytes("utf-8"));
			//header 설정
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Disposition", "attachment;filename="+fname);
			
			//response에 파일 내용 출력
			OutputStream fileout=response.getOutputStream();
			int len;
			byte[] b=new byte[(int)f.length()];
			while((len=fileinput.read(b))>0) {
				fileout.write(b, 0, len);
				
			}
			fileout.flush();
			fileout.close();
			fileinput.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "none";
	}

}
