package com.bb.sys.service.impi;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bb.pj.common.vo.EasyUI_Image;
import com.bb.sys.service.FileService;
@Service
//加载配置文件,交给Spring容器管理
@PropertySource("classpath:/properties/image.properties")
public class FileServiceImpl implements FileService {
	@Value("${image.localDirPath}")
	private String localDirPath;  //定义本地的磁盘路径
	@Value("${image.urlDirPath}")
	private String urlDirPath;
	@Override
	public EasyUI_Image fileUpload(MultipartFile uploadFile) {
		EasyUI_Image ui_Image = new EasyUI_Image();
		String fileName = uploadFile.getOriginalFilename();
		fileName = fileName.toLowerCase();
		if(!fileName.matches("^.+\\.(jpg|png|gif)$")){
			ui_Image.setError(1);
			return ui_Image;
		}
		try {
			BufferedImage read = ImageIO.read(uploadFile.getInputStream());
			int height = read.getHeight();
			int width = read.getWidth();
			if(height * width == 0) {
				ui_Image.setError(1);  //长或宽不存在就是0
				return ui_Image;
			}
			//封装图片数据
			ui_Image.setHeight(height).setWidth(width);
			//以时间格式创建文件夹保存数据
			String datePathDir = new SimpleDateFormat("yyyy/MM/dd").format(new Date());
			String realPathDir = localDirPath + datePathDir;
			File file = new File(realPathDir);
			if(!file.exists())
				file.mkdirs();
			//自定义UUID为文件命名     32位16进制数
			String uuid = UUID.randomUUID().toString().replace("-", "");
			String fileType = fileName.substring(fileName.lastIndexOf("."));
			String newName = uuid + fileType;
			//文件上传
			String realFilePath = realPathDir + "/" + newName;
			uploadFile.transferTo(new File(realFilePath));
			//编辑虚拟路径数据返回
			String realUrlPath = urlDirPath + datePathDir + "/" + newName;
			ui_Image.setUrl(realUrlPath);
		} catch (IOException e) {
			e.printStackTrace();
			ui_Image.setError(1);  //对象转换时异常
			return ui_Image;
		}
		return ui_Image;
	}

}
