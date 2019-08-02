package com.bb.sys.service;

import org.springframework.web.multipart.MultipartFile;

import com.bb.pj.common.vo.EasyUI_Image;

public interface FileService {

	EasyUI_Image fileUpload(MultipartFile uploadFile);

}
