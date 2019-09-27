Pod::Spec.new do |spec|
# ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
spec.name         = "LSWNovel" #名称
spec.version      = "1.0.7" #版本号
spec.summary      = "乐书屋小说SDK" #简介
spec.description  = "乐书屋小说SDK对接文档"#描述
spec.homepage     = "https://github.com/yipainbingxin/LSWNovel"#项目主页地址
spec.license      = "MIT"#许可证
spec.author             = { "yipainbingxin" => "472331078@qq.com" } #作者
# ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
spec.platform     = :ios, "8.0"  #支持最小系统版本
spec.source       = { :git => "https://github.com/yipainbingxin/LSWNovel.git", :tag => spec.version }  #项目的地址 （注意这里的tag位置，可以自己写也可以直接用s.version，但是与s.version一定要统一）
# ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#spec.source_files  = 'QiYouFNovel.framework/*.{h,m}'#需要包含的源文件（也是个坑）按照你的文件层级来
spec.vendored_frameworks = 'LSWNovel.framework'  #你的SDK路径（因为传的是静态库，这个必须要）


spec.resources = "Resource.bundle"



spec.frameworks = "Foundation", "UIKit"#依赖库

spec.dependency 'AFNetworking', '~> 3.2.1'
spec.dependency 'UIImage+Additions', '~> 2.1.4'
spec.dependency 'Masonry', '~> 1.1.0'
spec.dependency 'IQKeyboardManager', '6.4.2'
spec.dependency 'MJRefresh', '~> 3.2.0'
spec.dependency 'FSTextView', '~> 1.8'
spec.dependency 'SVProgressHUD', '~> 2.2.5'
spec.dependency 'MJExtension'
spec.dependency 'DZNEmptyDataSet'
spec.dependency 'dsBridge', '~> 3.0.6'
spec.dependency 'Reachability', '~> 3.2'
spec.dependency 'SDCycleScrollView', '~> 1.80'
spec.dependency 'ReactiveObjC'
spec.dependency 'Colours', '~> 5.13.0'

#依赖的第三方，有几个写几个

end


