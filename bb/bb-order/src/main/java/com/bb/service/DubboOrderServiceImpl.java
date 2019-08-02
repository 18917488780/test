package com.bb.service;
import java.util.Date;
import java.util.UUID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import com.alibaba.dubbo.config.annotation.Service;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.bb.mapper.AddrMapper;
import com.bb.mapper.CartMapper;
import com.bb.mapper.OrderMapper;
import com.bb.pojo.Addr;
import com.bb.pojo.Gwc;
import com.bb.pojo.Order;
import com.bb.service.DubboOrderService;
@Service(timeout = 3000)
public class DubboOrderServiceImpl implements DubboOrderService {
	@Autowired
	private AddrMapper addrMapper;
	@Autowired
	private CartMapper cartMapper;
	@Autowired
	private OrderMapper orderMapper;
	@Override
	public void saveAddr(Addr addr) {
		QueryWrapper<Addr> queryWrapper = new QueryWrapper<>();
		queryWrapper.eq("user_id", addr.getUserId());
		Addr addr1 = addrMapper.selectOne(queryWrapper);
		if(addr1 == null) 
			addrMapper.insert(addr);
		else 
			addrMapper.updateById(addr);
	}
	@Transactional
	@Override
	public String saveOrder(Integer[] array, Integer id) {
		String orderId = UUID.randomUUID().toString();
		orderId = orderId.replace("-", "");
		Addr addr = addrMapper.selectById(id);
		for(Integer i : array) {
			QueryWrapper<Gwc> queryWrapper = new QueryWrapper<>();
			queryWrapper.eq("id", i).eq("user_id", id);
			Gwc gwc=cartMapper.selectOne(queryWrapper);
			Order order = new Order();
			String buyerAddr = addr.getProvince()+addr.getCity()+addr.getArea();
			order.setId(orderId).setBuyerId(id).setBuyerName(addr.getName()).setCreatedTime(new Date()).setGoodId(gwc.getId())
			.setGoodName(gwc.getStr1()).setNumber(gwc.getNum()).setPrice(gwc.getTree()).setState(0).setBuyerAddr(buyerAddr);
			orderMapper.saveOrder(order);
			cartMapper.delete(queryWrapper);
		}
		if(cartMapper.selectList(null).size() == 0)
			return "/";
		else 
			return "/cart/showCart";
	}

}



