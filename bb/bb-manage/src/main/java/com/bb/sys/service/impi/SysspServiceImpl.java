package com.bb.sys.service.impi;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.bb.pj.common.vo.PageObject;
import com.bb.pj.common.vo.ServiceException;
import com.bb.pj.sys.dao.SysItemDao;
import com.bb.pj.sys.dao.SysOrderDao;
import com.bb.pj.sys.dao.SysspDao;
import com.bb.pj.sys.entity.Syssp;
import com.bb.pj.sys.util.PageUtil;
import com.bb.pojo.Item;
import com.bb.sys.service.SysspService;

@Service
public class SysspServiceImpl implements SysspService {
	@Autowired
	//@Qualifier("sysLogDao")
	private SysspDao sysLogDao;
	@Autowired
	private SysOrderDao sysOrderDao;
	@Override
	public PageObject<Syssp> findPageObjects(String name, Integer pageCurrent) {
		//1.验证参数合法性
		//1.1验证pageCurrent的合法性，
		//不合法抛出IllegalArgumentException异常
		if(pageCurrent==null||pageCurrent<1)
			throw new IllegalArgumentException("当前页码不正确");
		//2.基于条件查询总记录数
		//2.1) 执行查询
		int rowCount=sysLogDao.getRowCount(name);
		//2.2) 验证查询结果，假如结果为0不再执行如下操作
		if(rowCount==0)
			throw new ServiceException("系统没有查到对应记录");
		//3.基于条件查询当前页记录(pageSize定义为2)
		//3.1)定义pageSize
		int pageSize=3;
		//3.2)计算startIndex
		int startIndex=(pageCurrent-1)*pageSize;
		//3.3)执行当前数据的查询操作
		List<Syssp> records=
				sysLogDao.findPageOBjects(name, startIndex, pageSize);

		for(int i=0;i<records.size();i++) {
			Integer id = records.get(i).getSpid();
			int num = sysLogDao.findkucun(id);
			System.out.println(num);
			records.get(i).setNu(num);

		}

		//4.对分页信息以及当前页记录进行封装
		//4.1)构建PageObject对象
		PageObject<Syssp> pageObject=PageUtil.f(pageCurrent,
				pageSize,rowCount,records);
		//4.2)封装数据

		//5.返回封装结果。
		return pageObject;


	}

	@Transactional
	@RequiresPermissions("sys:goods:submit")
	@Override public void updateSp(Integer spid, Integer num2, String wuliugs,
			String danhao, Integer id) {
		int num = sysLogDao.findkucun(spid);
		int num1=num-num2;
		System.out.println(num1);
		sysLogDao.updateSp(spid, num1);
		sysOrderDao.updateOrder(id, wuliugs, danhao);
		System.out.println(wuliugs+"wuliugs");
		System.out.println("danhao"+danhao);
		sysLogDao.deleteById(id);
	}
	@Autowired
	private SysItemDao item;
	public List<Item> findItems() {
		return item.selectList(null);
	}



}
