package com.wen.util;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class FileUpload {
	
    /*
	 *图片上传工具类 
	 */
    public static String upload(HttpServletRequest request, MultipartFile file, String path) {
        String fileName = file.getOriginalFilename();
        fileName=UUID.randomUUID()+fileName.substring(fileName.indexOf("."),fileName.length());
        File targetFile = new File(path, fileName);  
        if(!targetFile.exists()){  
            targetFile.mkdirs();  
        }  
        //保存  
        try {  
            file.transferTo(targetFile);  
        } catch (Exception e) {  
            e.printStackTrace();  
        } 
        return fileName;
    }

}
