乐书屋小说SDK对接文档
--

### 快速开始
#### 一、获取AppId和AppSecret
暂不支持后台获取，请联系商务获取您的appid和appsecret


#### 二、环境配置

> 1、打开项目xcode，找到项目的plist文件，在Info.plist中添加NSAppTransportSecurity类型Dictionary。

> 2、在NSAppTransportSecurity下添加NSAllowsArbitraryLoads类型Boolean,值设为YES

>3、info.plist 第三方支付 添加URL Schemes白名单
 ```
<key>LSApplicationQueriesSchemes</key>
 <array>
    <!-- 微信 URL Scheme 白名单-->
    <string>wechat</string>
    <string>weixin</string>

    <!-- 支付宝  URL Scheme 白名单-->
    <string>alipay</string>
    <string>alipayshare</string>
</array>
```
##### 如图所示：
![Image text](https://note.youdao.com/yws/public/resource/c5e565d31b883e12a1414583aeda7475/xmlnote/WEBRESOURCE5d344468c9be99917cddae07a9a38167/543)
 
>4、添加 ``` URL types ``` 用于APP返回
identifier名字随意例如weixinpay
URL Schemes:
```
www.ysgtg.com

```
##### 如图所示：
![Image text](https://note.youdao.com/yws/public/resource/774d9c7bd9f401a7ef6e14479faf3429/xmlnote/WEBRESOURCE75cb02372994c0f23255c9c8c86cb7aa/549)

#### 三、cocoapods集成

代码
```
pod 'LSWNovel'

```

相关依赖库:安装LSWNovel时会自动安装集成，无需自己手动安装
 ```
 AFNetworking、UIImage+Additions、Masonry、IQKeyboardManager、MJRefresh、FSTextView、SVProgressHUD、MJExtension、DZNEmptyDataSet、Reachability、SDCycleScrollView、ReactiveObjC、Colours、dsBridge
 
   ```
 
 
 ### 四、代码集成

 1. 导入头文件
  ```
  #import <LSWNovel/LSWClient.h>
  
 ```
 
 2. APPdelegate中初始化SDK
 ```
/**
 初始化乐书屋小说组件
 @param appid 开发者联系商务获取您的appid
 @param appSecret 开发者联系商务获取您的appSecret
 */
+ (void)initWithAppid:(NSString *)appid withAppSecret:(NSString *)appSecret;

 ```
 
 
 3.APPdelegate中代理方法openURL中传URL用于处理支付结果
 ```
 /**
处理收到的 URL 消息
 @param url url
 */
+ (void)handleOpenUrl:(NSURL *)url;
```
 4.  push出显示小说界面
 ```
    /**
 push出乐书屋小说
 @param homeClass 当前的导航控制前
 */
+ (void)presetHomeVC:(UINavigationController*) homeClass;

 ```

 5.阅读奖励设置指南
 请联系商务开通阅读激励。
 ```
 /**
 设置用户标识
 @param user_code 用户ID
 */
+ (void)initUsercode:(NSString*)user_code;

 ```
 回调接口
**GET** http://xxx.xx?user_code=1&award_amount=100

|  参数 | 描述 |
| :-  | :-  |
| url | 回调奖励金地址（后台填写） |
| user_code | 用户唯一标识 |
| award_amount | 奖励金额（后台填写） |

```
返回成功结果示例： 
{
    "code":200,
    "msg":"成功",
    "err":""
}
返回失败结果示例:
{
    "code":-1,
    "msg":"失败",
    "err":"用户标识不存在"
}

```
**注意返回结果请按给定格式返回，否则用户无法收到奖励**
 
 

 
 
