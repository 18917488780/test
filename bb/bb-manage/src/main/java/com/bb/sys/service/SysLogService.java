package com.bb.sys.service;

import com.bb.pj.common.vo.PageObject;
import com.bb.pj.sys.entity.Syslog;

/**
 * 用户行为日志业务
 * @author Administrator
 *
 */

public interface SysLogService {
	//基于用户传入的多个id
	PageObject<Syslog> findPageObjects(
			String username,Integer pageCurrent);
	int deleteObjects(Integer... ids);
	
}
