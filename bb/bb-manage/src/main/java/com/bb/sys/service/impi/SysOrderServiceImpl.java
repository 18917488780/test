package com.bb.sys.service.impi;

import java.util.LinkedList;
import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.bb.pj.common.vo.PageObject;
import com.bb.pj.common.vo.ServiceException;
import com.bb.pj.sys.dao.SysOrderDao;
import com.bb.pj.sys.entity.Order;
import com.bb.pj.sys.util.PageUtil;
import com.bb.sys.service.SysOrderService;

@Service
public class SysOrderServiceImpl implements SysOrderService{
	@Autowired SysOrderDao sysOrderDao;
	//@Override
	/*
	 * public Integer byUpdateId(Integer id) { if(id==null||id<0) throw new
	 * ServiceException("数量异常,请重新输入"); int rows; try{
	 * //rows=sysOrderDao.byUpdateId(id); }catch(Exception e){ e.printStackTrace();
	 * throw new ServiceException("更新失败"); } return rows; }
	 */
	//查询所有orderType=1的订单集合

	@Override
	@RequiresPermissions("sys:order:submit")
	public int insertObjects(Integer...ids) {
		if(ids==null || ids.length<1)
			throw new ServiceException("请先选中订单");
		List<Order>list1=sysOrderDao.findAllByIds(ids);
		sysOrderDao.updateZT(ids);
		
			int rows=0 ;
			try {
				for(Order entity : list1) {
					if(entity==null)
						throw new IllegalArgumentException("无效订单");
					if(StringUtils.isEmpty(entity.getId()))
						throw new ServiceException("订单号不能为空");
					sysOrderDao.insertObject(entity);
					rows++;
				}
			} catch (Exception e) {
				e.printStackTrace();
				throw new IllegalArgumentException("已有此订单信息");
			}
			return rows;
	}
	@Override
	public PageObject<Order> findPages(String nickname,Integer pageCurrent) {
		int startIndex = PageUtil.getStartIndex(pageCurrent);
		int pageSize=PageUtil.getPageSize();
		List<Order> list = sysOrderDao.findPages(nickname, startIndex, pageSize);
		int rowCount = sysOrderDao.getRowCount(nickname);
		System.out.println(rowCount);
		return PageUtil.f(pageCurrent,pageSize , rowCount, list);
	}
}
