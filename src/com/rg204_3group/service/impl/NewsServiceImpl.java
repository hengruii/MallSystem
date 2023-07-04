package com.rg204_3group.service.impl;

import com.rg204_3group.base.BaseDao;
import com.rg204_3group.base.BaseServiceImpl;
import com.rg204_3group.mapper.NewsMapper;
import com.rg204_3group.po.News;
import com.rg204_3group.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewsServiceImpl extends BaseServiceImpl<News> implements NewsService {

    @Autowired
    private NewsMapper newsMapper;

    @Override
    public BaseDao<News> getBaseDao() {
        return newsMapper;
    }
}
