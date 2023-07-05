<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>管理员后台</title>
    <link rel="stylesheet" href="${ctx}/resource/css/pintuer.css">
    <link rel="stylesheet" href="${ctx}/resource/css/admin.css">
    <script src="${ctx}/resource/js/jquery.js"></script>
    <script src="${ctx}/resource/js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head" id="add">
        <strong><span class="icon-pencil-square-o">新增用户</span> </strong>
    </div>
    <div class="body-content">
        <form action="${ctx}/user/Exupdate" method="post" class="form-x">
            <div class="form-group">
                <div class="form-group">
                    <span style="margin-right: 40px;height: 42px;line-height: 42px;width: 100px;" class="left_yh block_yh tright">用户名：</span>
                    <input type="text" name="userName" placeholder="请输入您的用户名" style="border:1px solid #c9c9c9;width: 292px;height: 42px;font-size: 16px;text-indent: 22px;" class="left_yh" value="${obj.userName}">
                </div>
                <div class="form-group">
                    <span style="margin-right: 40px;height: 42px;line-height: 42px;width: 100px;" class="left_yh block_yh tright">设置密码：</span>
                    <input type="text" name="passWord" placeholder="建议至少使用两种字符组合" style="border:1px solid #c9c9c9;width: 292px;height: 42px;font-size: 16px;text-indent: 22px;" class="left_yh" value="${obj.passWord}">

                </div>
                <div class="form-group">
                    <div class="left_yh font16 tright" style="width: 120px;">
                        <span class="red">*</span>性别：
                    </div>
                    <select style="outline: none;border: 1px solid #ddd;height: 30px;" name="sex">
                        <option value="男" ${obj.sex=='男'?'selected="selected"':''}>男</option>
                        <option value="女" ${obj.sex=='女'?'selected="selected"':''}>女</option>
                    </select>
                </div>
                <div class="form-group">
                    <span style="margin-right: 40px;height: 42px;line-height: 42px;width: 100px;" class="left_yh block_yh tright">手机号：</span>
                    <input type="text" name="phone" placeholder="建议使用常用的手机" style="border:1px solid #c9c9c9;width: 292px;height: 42px;font-size: 16px;text-indent: 22px;" class="left_yh" value="${obj.phone}">

                </div>
                <div class="form-group">
                    <span style="margin-right: 40px;height: 42px;line-height: 42px;width: 100px;" class="left_yh block_yh tright">管理员权限</span>
                    <select style="outline: none;border: 1px solid #ddd;height: 30px;" name="realName">
                        <option value="管理员" ${obj.realName=='管理员'?'selected="selected"':''}>管理员</option>
                        <option value="用户" ${obj.realName=='用户'?'selected="selected"':''} >用户</option>
                    </select>

                </div>
                <div class="form-group">
                    <span style="margin-right: 40px;height: 42px;line-height: 42px;width: 100px;" class="left_yh block_yh tright">电子邮箱：</span>
                    <input type="text" name="email" placeholder="请输入邮箱" style="border:1px solid #c9c9c9;width: 292px;height: 42px;font-size: 16px;text-indent: 22px;" class="left_yh" value="${obj.email}">

                </div>
                <div class="form-group">
                    <span style="margin-right: 40px;height: 42px;line-height: 42px;width: 100px;" class="left_yh block_yh tright">地址：</span>
                    <input type="text" name="address" placeholder="请输入地址" style="border:1px solid #c9c9c9;width: 292px;height: 42px;font-size: 16px;text-indent: 22px;" class="left_yh" value="${obj.address}">
                </div>
            <div class="form-group">
                <div class="label"></div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit">提交</button>
                </div>
            </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>