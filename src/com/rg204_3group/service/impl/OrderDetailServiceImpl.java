package com.rg204_3group.service.impl;

import com.rg204_3group.base.BaseDao;
import com.rg204_3group.base.BaseServiceImpl;
import com.rg204_3group.mapper.OrderDetailMapper;
import com.rg204_3group.po.OrderDetail;
import com.rg204_3group.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderDetailServiceImpl extends BaseServiceImpl<OrderDetail> implements OrderDetailService {
    @Autowired
    private OrderDetailMapper orderDetailMapper;

    @Override
    public BaseDao<OrderDetail> getBaseDao() {
        return orderDetailMapper;
    }
}
