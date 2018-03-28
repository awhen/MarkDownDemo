package com.wen.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.wen.util.FileUpload;


@Controller
public class MarkDownImageUpload {
	
	@RequestMapping("imageUpload")
	public void imageUpload(@RequestParam(value = "editormd-image-file", required = true) MultipartFile file,
			HttpServletRequest request, HttpServletResponse response){
		response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");  
        PrintWriter wirte = null; 
        JSONObject json = new JSONObject();
		 try {  
	            wirte = response.getWriter();
	            //文件存放的路径
	            String path = request.getSession().getServletContext().getRealPath("upload");
	            String url = "http://localhost:8080" 
	                    + request.getContextPath() 
	                    + "//upload//"
	            		+ FileUpload.upload(request, file, path); 
	            json.put("success", 1);
	            json.put("message", "hello");
	            json.put("url", url);
	        } catch (Exception e) {  
	        }finally{  
	            wirte.print(json);  
	            wirte.flush();  
	            wirte.close();  
	        }
		System.out.println("imageUpload");
	}

}
