package com.bb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.dubbo.config.annotation.Service;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.bb.mapper.CartMapper;
import com.bb.pojo.Gwc;
@Service(timeout = 3000)
public class DubboCartServiceImpl implements DubboCartService {
	@Autowired
	private CartMapper cartMapper;
	@Override
	public int addCart(Gwc cart) {
		Integer id = cart.getId();
		Integer userId = cart.getUserId();
		QueryWrapper<Gwc> queryWrapper = new QueryWrapper<>();
		queryWrapper.eq("id", id).eq("user_id", userId);
		Gwc gwc = cartMapper.selectOne(queryWrapper);
		int rows = 0;
		if(gwc == null)
			rows = cartMapper.insert(cart);
		else {
			Integer num = gwc.getNum() + cart.getNum();
			UpdateWrapper<Gwc> updateWrapper = new UpdateWrapper<>();
			updateWrapper.eq("id", cart.getId()).eq("user_id", cart.getUserId());
			rows = cartMapper.update(new Gwc().setNum(num), updateWrapper);
		}
		return rows;
	}
	@Override
	public List<Gwc> showCart(Integer id) {
		QueryWrapper<Gwc> queryWrapper = new QueryWrapper<>();
		queryWrapper.eq("user_id", id);
		return cartMapper.selectList(queryWrapper);
	}
	@Override
	public int delete(Gwc cart) {
		QueryWrapper<Gwc> queryWrapper = new QueryWrapper<>();
		queryWrapper.eq("id", cart.getId()).eq("user_id", cart.getUserId());
		return cartMapper.delete(queryWrapper);
	}
	@Override
	public void updateNum(Gwc cart) {
		UpdateWrapper<Gwc> updateWrapper = new UpdateWrapper<>();
		updateWrapper.eq("id", cart.getId()).eq("user_id", cart.getUserId());
		cartMapper.update(new Gwc().setNum(cart.getNum()), updateWrapper);
	}
	@Override
	public Gwc selectById(Integer userId, Integer id) {
		// TODO Auto-generated method stub
		QueryWrapper<Gwc> queryWrapper = new QueryWrapper<>();
		queryWrapper.eq("id", id).eq("user_id", userId);
		Gwc gwc=cartMapper.selectOne(queryWrapper);
		return gwc;
	}
}
