package com.bb.sys.service.impi;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.bb.pj.common.vo.PageObject;
import com.bb.pj.common.vo.ServiceException;
import com.bb.pj.sys.dao.SysItemDao;
import com.bb.pj.sys.dao.SysKcDao;
import com.bb.pj.sys.entity.SysKc;
import com.bb.pojo.Item;
import com.bb.sys.service.SysKcService;

@Service
public class SysKcServiceImpl implements SysKcService{

	@Autowired
	private SysKcDao sysKcDao;

	@Override
	public PageObject<SysKc> findPageObjects(
			String name, Integer pageCurrent) {
		//1.验证参数合法性
		//1.1验证pageCurrent的合法性，
		//不合法抛出IllegalArgumentException异常
		if(pageCurrent==null||pageCurrent<1)
			throw new IllegalArgumentException("当前页码不正确");
		//2.基于条件查询总记录数
		//2.1) 执行查询
		int rowCount=sysKcDao.getRowCount(name);
		//2.2) 验证查询结果，假如结果为0不再执行如下操作
		if(rowCount==0)
			throw new ServiceException("记录不存在");
		//3.基于条件查询当前页记录(pageSize定义为2)
		//3.1)定义pageSize
		int pageSize=3;
		//3.2)计算startIndex
		int startIndex=(pageCurrent-1)*pageSize;
		//3.3)执行当前数据的查询操作
		List<SysKc> records=
				sysKcDao.findPageObjects(name, startIndex, pageSize);
		//4.对分页信息以及当前页记录进行封装
		//4.1)构建PageObject对象
		PageObject<SysKc> pageObject=new PageObject<>();
		//4.2)封装数据
		pageObject.setPageCurrent(pageCurrent);
		pageObject.setPageSize(pageSize);
		pageObject.setRowCount(rowCount);
		pageObject.setRecords(records);
		pageObject.setPageCount((rowCount-1)/pageSize+1);
		//5.返回封装结果。
		return pageObject;
	}

	@Override
	@RequiresPermissions("sys:store:delete")
	public int deleteObject(Integer id) {
		//1.验证数据的合法性
		if(id==null || id<1)
			throw new ServiceException("id值不正确"+id);
		//2.执行删除操作
		int rows = sysKcDao.deleteObject(id);
		if(rows==0)
			throw new ServiceException("数据一斤可能不存在");
		//3.返回结果
		return rows;
	}

	@Override
	@RequiresPermissions("sys:store:add")
	public int saveObject(SysKc entity) {
		//1.合法性
		if(entity==null)
			throw new ServiceException("保存数据不能为空");
		if(StringUtils.isEmpty(entity.getName()))
			throw new ServiceException("商品名不能为空");
		//2.保存操作
		entity.setTree3(entity.getTree1() / entity.getTree2() * 10);
		entity.setTree4(entity.getTree2() - entity.getTree1());
		entity.setCreatedTime(new Date());
		int rows = sysKcDao.insertObject(entity);
		//3.返回结果
		return rows;
	}
	
	@Autowired
	private SysItemDao itemDao;
	@Override
	public Item doRecover(Integer id) {
		return itemDao.selectById(id);
	}
	
	@Override
	public int updateObject(Item entity) {
		if(entity==null)
			throw new ServiceException("保存数据不能为空");
		if(StringUtils.isEmpty(entity.getName()))
			throw new ServiceException("商品名不能为空");
		//2.保存操作
		BigDecimal big1 = new BigDecimal(entity.getTree1());
		BigDecimal big2 = new BigDecimal(entity.getTree2());
		double tree3 =big1.divide(big2, 2, BigDecimal.ROUND_HALF_UP).doubleValue() *10;
		entity.setTree3(tree3);
		entity.setTree4(entity.getTree2() - entity.getTree1());
		String img1 = entity.getImg1();
		String img2 = entity.getImg2();
		String img3 = entity.getImg3();
		String img4 = entity.getImg4();
		String img5 = entity.getImg5();
		if(StringUtils.isEmpty(img1)&&StringUtils.isEmpty(img2)&&StringUtils.isEmpty(img3)
				&&StringUtils.isEmpty(img4)&&StringUtils.isEmpty(img5)) {
			entity.setImg1(null).setImg2(null).setImg3(null).setImg4(null).setImg5(null);
		}
		return itemDao.updateById(entity);
	}



}
