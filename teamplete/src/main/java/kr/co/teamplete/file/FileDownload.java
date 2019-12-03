package kr.co.teamplete.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

public class FileDownload extends AbstractView{
	
	private String getBrowser(HttpServletRequest request) {
		  String header = request.getHeader("User-Agent");

		  if (header.contains("MSIE")) {
		    return "MSIE";
		  } else if(header.contains("Trident")) {
		    return "MSIE11";
		  } else if(header.contains("Chrome")) {
		    return "Chrome";
		  } else if(header.contains("Opera")) {
		    return "Opera";
		}

		  return "Firefox";
		}

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		File file = (File)model.get("downloadFile");
		String realFileName = (String)model.get("realFileName");
		System.out.println("DownloadView --> file.getPath() : " + file.getPath());
		System.out.println("DownloadView --> file.getName() : " + file.getName());
		System.out.println("realFileName --> " + realFileName);
		
		response.setContentType("application/download; utf-8");
		response.setContentLength((int)file.length());
				
		// 브라우저 정보에 따라 utf-8 변경
		String header = getBrowser(request);

		if (header.equals("MSIE")) {
		  String docName = URLEncoder.encode(realFileName,"UTF-8").replaceAll("\\+", "%20");
		  response.setHeader("Content-Disposition", "attachment;filename=" + docName + ";");
		} else if (header.equals("Firefox")) {
		  String docName = new String(realFileName.getBytes("UTF-8"), "ISO-8859-1");
		  response.setHeader("Content-Disposition", "attachment; filename=\"" + docName + "\"");
		} else if (header.equals("Opera")) {
		  String docName = new String(realFileName.getBytes("UTF-8"), "ISO-8859-1");
		  response.setHeader("Content-Disposition", "attachment; filename=\"" + docName + "\"");
		} else if (header.equals("Chrome")) {
		  String docName = new String(realFileName.getBytes("UTF-8"), "ISO-8859-1");
		  response.setHeader("Content-Disposition", "attachment; filename=\"" + docName + "\"");
		}
		
		response.setHeader("Content-Type", "application/octet-stream");
		response.setHeader("Content-Transfer-Encoding", "binary;");
		response.setHeader("Pragma", "no-cache;");
		response.setHeader("Expires", "-1;");
		
        OutputStream out = response.getOutputStream();
        FileInputStream fis = null;
        
        //파일 copy 후에
        try {
        	fis = new FileInputStream(file);
        	FileCopyUtils.copy(fis, out);
        } catch(Exception e) {
        	e.printStackTrace();
        } finally {
        	if(fis != null) {
        		try {
        			fis.close();
        		}catch(Exception e) {}
        	}
        }
        out.flush();

	}
	
}
