Pod::Spec.new do |s|
  s.name         = "AdSetQDGAdapter"
  s.version      = "2.0.1.0"
  s.summary      = "AdSet广告对接适配器类"
  s.description  = <<-DESC
                    AdSetQDGAdapter 是一个专业的广告聚合SDK，提供高效的广告展示和收益优化功能。
                    DESC
  s.homepage     = "https://github.com/OSETSDK/AdSetQDGAdapter"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { 'shenshi' => 'yaohaofei@shenshiads.com' }
  
  # 设置最低支持版本
  s.ios.deployment_target = '12.0'
  
  # 源文件配置
  s.source       = {
    :git => 'https://github.com/OSETSDK/AdSetQDGAdapter.git',
    :tag => s.version.to_s
  }
  
  # 主框架文件
  # 检查 AdSetQD*Adapter.podspec 关键字段
  s.vendored_frameworks = 'AdSetQDGAdapter.xcframework'
  
  # 系统框架依赖
  s.frameworks = "Foundation", "UIKit"
  
  # 资源文件
  # Swift版本设置
  s.swift_version = '5.0'
  
  # ================= 第三方依赖库 =================

  s.dependency 'OSETCoreAd'
  s.dependency 'AdSetQDGAdCore'

  s.user_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }

end
