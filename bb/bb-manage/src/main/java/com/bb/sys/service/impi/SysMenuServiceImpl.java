package com.bb.sys.service.impi;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.bb.pj.common.vo.Node;
import com.bb.pj.common.vo.ServiceException;
import com.bb.pj.sys.dao.SysMenuDao;
import com.bb.pj.sys.entity.SysMenu;
import com.bb.sys.service.SysMenuService;

@Service
public class SysMenuServiceImpl implements SysMenuService {
	@Autowired
	private SysMenuDao sysMenuDao;
	@Override
	public List<Map<String, Object>> findObjects() {
		
		return sysMenuDao.findObjects();
	}
	@Override
	public List<Node> findZtreeMenuNodes() {
		return sysMenuDao.findZtreeMenuNodes();
	}
	@Override
	public int saveObject(SysMenu entity) {
		//1.合法验证
		if(entity==null)
		throw new ServiceException("保存对象不能为空");
		if(StringUtils.isEmpty(entity.getName()))
		throw new ServiceException("菜单名不能为空");
		int rows;
		//2.保存数据
		try{
		rows=sysMenuDao.insertObject(entity);
		}catch(Exception e){
		e.printStackTrace();
		throw new ServiceException("保存失败");
		}
		//3.返回数据
		return rows;
	}
	@Override
	public int updateObject(SysMenu entity) {
			//1.合法验证
			if(entity==null)
			throw new ServiceException("保存对象不能为空");
			if(StringUtils.isEmpty(entity.getName()))
			throw new ServiceException("菜单名不能为空");
			
			//2.更新数据
			int rows=sysMenuDao.updateObject(entity);
			if(rows==0)
			throw new ServiceException("记录可能已经不存在");
			//3.返回数据
			return rows;
	}

}
