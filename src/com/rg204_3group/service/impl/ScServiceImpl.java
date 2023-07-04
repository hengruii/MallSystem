package com.rg204_3group.service.impl;

import com.rg204_3group.base.BaseDao;
import com.rg204_3group.base.BaseServiceImpl;
import com.rg204_3group.mapper.ScMapper;
import com.rg204_3group.po.Sc;
import com.rg204_3group.service.ScService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScServiceImpl extends BaseServiceImpl<Sc> implements ScService {

    @Autowired
    private ScMapper scMapper;

    @Override
    public BaseDao<Sc> getBaseDao() {
        return scMapper;
    }
}
