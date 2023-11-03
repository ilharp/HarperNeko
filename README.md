<div align="center">
<h1>Harper 猫猫</h1>
<p>娱乐向的多功能群聊机器人</p>
</div>

## 食用

### 导入

### 公域还是私域？

### 生产

将本地测试好的 Harper 猫猫复制粘贴到服务器以后，在服务器的
`.env.local` 中添加：

```ini
HPN_PROD=true
```

生产模式会：

- 开启控制台认证，只有认证用户可以登录控制台
- 关闭 logger 插件，logger 插件会产生巨量的流量
- 关闭 market 和 migration 插件，因为不需要在服务器上修改配置

如果打开控制台认证后无法登录，使用 `admin` `123456` 登录即可。
