乐书屋小说SDK对接文档
--

### 快速开始
#### 一、获取AppId和AppSecret
暂不支持后台获取，请联系商务获取您的appid和appsecret


#### 二、环境配置

> 1、打开项目xcode，找到项目的plist文件，在Info.plist中添加NSAppTransportSecurity类型Dictionary。

> 2、在NSAppTransportSecurity下添加NSAllowsArbitraryLoads类型Boolean,值设为YES

#### 三、cocoapods集成

代码
```
pod 'LSWNovel', '~> 1.0.4'

```

依赖库:安装LSWNovel时会自动安装集成，无需自己手动安装
 ```

   pod 'AFNetworking', '~> 3.2.1'
   pod 'UIImage+Additions', '~> 2.1.4'
   pod 'Masonry', '~> 1.1.0'
   pod 'IQKeyboardManager', '6.4.2'
   pod 'MJRefresh', '~> 3.2.0'
   pod 'FSTextView', '~> 1.8'
   pod 'SVProgressHUD', '~> 2.2.5'
   pod 'MJExtension'
   pod 'DZNEmptyDataSet'
   pod 'Reachability', '~> 3.2'
   pod 'SDCycleScrollView', '~> 1.80'
   pod 'ReactiveObjC'
   pod 'Colours', '~> 5.13.0'
   pod 'dsBridge', '~> 3.0.6'
   
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
 3.阅读奖励设置指南
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
 
 
 4.  push出显示小说界面
 ```
    /**
 push出乐书屋小说
 @param homeClass 当前的导航控制前
 */
+ (void)presetHomeVC:(UINavigationController*) homeClass;

 ```
 
 
