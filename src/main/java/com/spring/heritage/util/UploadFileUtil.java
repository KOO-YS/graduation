package com.spring.heritage.util;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.web.multipart.MultipartFile;

/*
 * 1. 파일명 중복을 피하기 위한 랜덤 파일명 처리, 2. 이미지 폴더에 파일 이동시켜 저장
 * 
 * @param 이미지 파일 저장 경로, 업로드 할 file 객체
 * @return 렌덤으로 생성 된 파일 명
 */
public class UploadFileUtil {
	public static String saveImageFile(String uploadImgPath, MultipartFile file) throws IllegalStateException, IOException {
		String oriName = file.getOriginalFilename(); //원래 파일명
		String ext = FilenameUtils.getExtension(oriName).toLowerCase(); //파일 확장자

		String saveName; //랜덤 파일명
		File saveImg; //파일 저장경로 + 랜덤 파일명
		
		//파일명 랜덤처리
		saveName = RandomStringUtils.randomAlphanumeric(32) + "." + ext;
		saveImg = new File(uploadImgPath + saveName);
		
		//이미지 이동
		saveImg.getParentFile().mkdirs();
		file.transferTo(saveImg);
		
		return saveName;
	}
}