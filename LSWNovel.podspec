Pod::Spec.new do |spec|
# ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
spec.name         = "LSWNovel" #名称
spec.version      = "1.1.0" #版本号
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

spec.dependency 'AFNetworking'
spec.dependency 'UIImage+Additions'
spec.dependency 'Masonry'
spec.dependency 'IQKeyboardManager'
spec.dependency 'MJRefresh'
spec.dependency 'FSTextView'
spec.dependency 'SVProgressHUD'
spec.dependency 'MJExtension'
spec.dependency 'DZNEmptyDataSet'
spec.dependency 'dsBridge'
spec.dependency 'Reachability'
spec.dependency 'SDCycleScrollView'
spec.dependency 'ReactiveObjC'
spec.dependency 'Colours'

#依赖的第三方，有几个写几个

end


