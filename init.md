#### Could not download kotlin-compiler-embeddable.jar vscode
https://blog.csdn.net/mo911108/article/details/88603003

# 上手写
#### 1. 没有h5那样的链接路由route, nav.push(组件对象)

#### 2. 使用CupertinoPageScaffold内容区被上下栏遮挡, 用SafeArea套住内容区的widget

#### 3. CupertinoTabScaffold: 
      - 各个tab有自己的nav栈, 测试正常
      - 每个tab有自己的缓存

#### 4. 跳转新页面后还存在底部tab, 顶栏没有.
添加rootNavigator: true
```flutter
  Navigator.of(context, rootNavigator: true).push(
      CupertinoPageRoute(builder: (context) => new NewsInfoWidget()
          // new ProductDetail(product: products[index])
          ));
```
https://www.jianshu.com/p/1b02cbb32bdc?utm_source=desktop&utm_medium=timeline

#### 5. 到处都要用SafeArea吗?


#### 6. android build
https://flutterchina.club/android-release/


### 图片
#### 静态图片访问不到? 需要配置pubspec.yaml assets

#### A RenderFlex overflowed by 125 pixels on the right. 图片跑到外边去了

#### column row中的Text不能换行?用Expanded, Row 和 Column 是 Flex 组件，是无法滚动的，如果没有足够的空间，flutter就提示溢出错误。
https://www.awaimai.com/2762.html

#### flex的尺寸是什么单位??  dp
https://www.jianshu.com/p/b2c545c65355  dp\sp\px的区别
px是像素个数
ppi 图像分辨率  = 对角线像素个数/对角线英寸 = √（长度像素数² + 宽度像素数²） / 屏幕对角线英寸数

dp：Density-independent pixels，以160PPI屏幕为标准，则1dp=1px，dp和px的换算公式 ：
dp*ppi/160 = px。比如1dp x 320ppi/160 = 2px。


