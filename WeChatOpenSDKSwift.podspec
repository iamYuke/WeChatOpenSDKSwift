

Pod::Spec.new do |spec|



  spec.name         = "WeChatOpenSDKSwift"
  spec.version      = "1.8.9"
  spec.summary      = "WeChatOpenSDK，微信开放平台SDK封装成的Swift版本"


  spec.description  = <<-DESC 
                   Swift版本的微信SDK，支持多版本引用


                   DESC

  spec.homepage     = "https://github.com/iamYuke/WeChatOpenSDKSwift"
  
  spec.license      = { :type => "MIT", :file => "LICENSE" }



  spec.author       = { "Yuke" => "iamyukezhang@foxmail.com" }
 

  spec.source       = { :git => "https://github.com/iamYuke/WeChatOpenSDKSwift", :tag => "#{spec.version}" }

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



end
