# WeChatOpenSDKSwift

微信官方SDK封装成的Swift版本,方便在Swift项目中直接使用

CI Status Version License Platform


# 安装

支持通过CocoaPods进行安装，在Podfile中添加如下代码

```
 pod "WeChatOpenSDKSwift"

```

默认的版本的带有支付功能的x86与arm都支持的版本(模拟器与真机都可以使用)


- 如果只使用真机的带支付SDK

```
	
	pod "WeChatOpenSDKSwift", :subspecs => ['ARM']

```

- 不带支付的版本（x86与arm框架）

```

	pod "WeChatOpenSDKSwift", :subspecs => ['NOPAY']

```

- 不待支付版本（arm框架）


```

	pod "WeChatOpenSDKSwift", :subspecs => ['NOPAY_ARM']

```


# 使用

克隆下来项目，cd 到Podfile的文件目录，执行pod install 

```

 import WechatOpenSDK 

```
 导入SDK库，然后直接使用即可

  [官方文档](https://developers.weixin.qq.com/doc/oplatform/Mobile_App/Access_Guide/iOS.html)



# Author 

Yuke(iamYukeZhang@foxmail.com)





