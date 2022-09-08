

Pod::Spec.new do |spec|



  spec.name         = "WeChatOpenSDKSwiftYuke"
  spec.version      = "1.9.6"
  spec.summary      = "WeChatOpenSDK，微信开放平台SDK封装成的Swift版本"


  spec.description  = <<-DESC 
                   Swift版本的微信SDK，支持多版本引用。
                   可以选择性使用构建版本，减小引入的库的大小。
                   具体使用方法，详见README.md


                   DESC

  spec.homepage     = "https://github.com/iamYuke/WeChatOpenSDKSwift"
  
  spec.license      = { :type => "MIT", :file => "LICENSE" }



  spec.author       = { "Yuke" => "iamyukezhang@foxmail.com" }
 

  spec.source       = { :git => "https://github.com/iamYuke/WeChatOpenSDKSwift.git", :tag => "#{spec.version}" }

  spec.platform     = :ios, "10.0"

  spec.swift_version = "5.0"
  spec.static_framework = true

  spec.frameworks = 'Security', 'CoreGraphics', 'WebKit'

  spec.libraries = 'z', 'c++'


  spec.default_subspec = 'Core'

  spec.subspec 'Core' do |s| 

    s.vendored_frameworks = 'Vendor/Pay/armx86/WechatOpenSDK.framework'

  end

  spec.subspec 'ARM' do |s| 

    s.vendored_frameworks = 'Vendor/Pay/arm/WechatOpenSDK.framework'

  end

  spec.subspec 'NOPAY_ARM' do |s| 

    s.vendored_frameworks = 'Vendor/NoPay/arm/WechatOpenSDK.framework'

  end

  spec.subspec 'NOPAY' do |s| 

    s.vendored_frameworks = 'Vendor/NoPay/armx86/WechatOpenSDK.framework'

  end


  # Xcode12的里面因为有arm的模拟器到会有问题podspec 的 pod lib lint 验证不通过

  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }



end
