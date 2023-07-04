package com.rg204_3group.service.impl;

import com.rg204_3group.base.BaseDao;
import com.rg204_3group.base.BaseServiceImpl;
import com.rg204_3group.mapper.ItemCategoryMapper;
import com.rg204_3group.po.ItemCategory;
import com.rg204_3group.service.ItemCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ItemCategoryServiceImpl extends BaseServiceImpl<ItemCategory> implements ItemCategoryService {
    @Autowired
    ItemCategoryMapper itemCategoryMapper;

    @Override
    public BaseDao<ItemCategory> getBaseDao() {
        return itemCategoryMapper;
    }
}
