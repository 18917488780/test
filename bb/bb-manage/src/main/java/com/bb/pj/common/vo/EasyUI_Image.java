package com.bb.pj.common.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
@Accessors(chain = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
public class EasyUI_Image {
	private Integer error = 0;
	private String url; //图片虚拟路径
	private Integer width;
	private Integer height;
}
