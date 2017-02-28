# 使用 API doc 編寫規範的 API 文檔
主要使用 npm 插件： apidoc、gulp-apidoc，'@/api'目錄下就是主要的文件，其中的分類方式、語法都可以參照。

## 运行
```bash
> npm install | gulp
```

浏览器打开 `path-to-your-project/doc/api/index.html` 可查看api文档。

## 文档结构：

| 模块        | 描述                |
| ----------- | -----------         |
| CONFIG      | 各个model的状态参数 |
| USER        | 用户登录验证模块    |
| ADMIN       | 管理员角色模块      |
| BOX         | 测试盒模块          |
| PLAN LIST   | 测试计划列表模块    |
| PLAN DETAIL | 测试计划详情模块    |
| EXECUTION   | 测试执行详情模块    |
| TESTER/SERVER/CONTROL SOCKET | tester,server,control 三个部分socket接口 |