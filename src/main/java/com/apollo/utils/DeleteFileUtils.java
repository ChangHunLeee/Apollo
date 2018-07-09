/**
 프로젝트 : Apollo
 파일이름 : UploadFileUtils.java 
 날      짜 : 2018. 7. 4.
 작 성  자 : 이 진 우
*/

package com.apollo.utils;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

public class DeleteFileUtils {
	
	public static void deleteFile(String filepath) throws Exception {
		S3Util s3 = new S3Util();
		String bucketName = "projectapollo";
		
		s3.fileDelete(bucketName, filepath);
	}
}