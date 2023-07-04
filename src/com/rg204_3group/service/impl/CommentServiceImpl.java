package com.rg204_3group.service.impl;

import com.rg204_3group.base.BaseDao;
import com.rg204_3group.base.BaseServiceImpl;
import com.rg204_3group.mapper.CommentMapper;
import com.rg204_3group.po.Comment;
import com.rg204_3group.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl extends BaseServiceImpl<Comment> implements CommentService {

    @Autowired
    private CommentMapper commentMapper;

    @Override
    public BaseDao<Comment> getBaseDao() {
        return commentMapper;
    }
}
