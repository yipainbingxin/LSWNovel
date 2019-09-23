乐书屋小说SDK对接文档
--

### 快速开始
#### 一、获取AppId和AppSecret
暂不支持后台获取，请联系商务获取您的appid和appsecret


#### 二、cocoapods集成

代码
```
pod 'LSWNovel', '~> 1.0.2'

```

依赖库:安装LSWNovel时会自动安装集成，无需自己手动安装
 ```

   pod 'AFNetworking', '~> 3.1.0'
   pod 'UIImage+Additions', '~> 2.1.0'
   pod 'Masonry', '~> 1.0.2'
   pod 'IQKeyboardManager', '5.0.4'
   pod 'MJRefresh', '~> 3.1.15.3'
   pod 'FSTextView', '~> 1.2'
   pod 'SVProgressHUD', '~> 2.1.2'
   pod 'MJExtension'
   pod 'DZNEmptyDataSet'
   pod 'Reachability', '~> 3.2'
   pod 'SDCycleScrollView', '~> 1.80'
   pod 'ReactiveObjC'
   pod 'Colours', '~> 5.13.0'
   pod 'dsBridge', '~> 3.0.2'
   
   ```
 
 
 ### 三、代码集成

 1. 导入头文件
  ```
  #import <LSWNovel/LSWClient.h>
  
 ```
 
 2. APPdelegate中初始化SDK
 ```
     [LSWClient initWithAppkey:@"" withAppSecret:@"" withUserCode:@"";
];

 ```
 
 3.  push出显示小说界面传入当前界面的导航条
 
    [LSWClient presetHomeVC:<#(nonnull UINavigationController *)#>]

 
 
 
