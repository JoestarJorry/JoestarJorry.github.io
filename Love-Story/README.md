# Love-Page
# 一个可留言的恋爱计时HTML页面

### 1.效果展示

![demo](img/image.png)

### 2.DEMO

https://abc.mcloc.cn/abc/demo/lovepage/

### 3.特点

1. 背景图片每日随必应首页更换。
2. 点击“几行情话”按钮或者点击中间文字可调用接口输出一句随机情话 。
3. 评论系统使用了无需后台的[Valine](https://valine.js.org/)。

### 4.使用方法

##### 4.1起始时间

请在`index.html`中的计时器模块自行修改。

##### 4.2背景图

在`index.html`中修改：

```js
.wrap {
	background-image: url(https://abc.mcloc.cn/abc/bing/);
}
```

这里使用的是我自己的接口，如果您也想使用，请移步至[小马奔腾的每日一必应图](https://blog.mcloc.cn/archives/190.html)。

##### 4.3情话接口

情话接口已经开源，该接口会从数据库中随机取一句话返回。请移步至[Return-sentences-randomly](https://github.com/androidmumo/Return-sentences-randomly)。

##### 4.4评论系统

请参阅[Valine官方文档](https://valine.js.org/quickstart.html)。

----------------------------------------------------

网址总导航：www.xgjxw6.com