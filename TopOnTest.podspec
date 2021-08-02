#
# Be sure to run `pod lib lint TopOnTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TopOnTest'
  s.version          = '1.0.0'
  s.summary          = '测试可不吗'
  s.description      = <<-DESC
  试一下看看行不系啊,好幸福那么安排单点的点滴潘多拉到哪啦么安排单点的点滴潘多么安排单点的点滴潘多么安排单点的点滴潘多
                       DESC
  s.homepage         = 'https://github.com/GPPG/topon_pod_test.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'GUO PENG' => 'ios' }
  s.source           = { :git => 'https://github.com/GPPG/topon_pod_test.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.0'

  s.static_framework = true
  
  s.requires_arc = true

  s.frameworks = 'SystemConfiguration', 'CoreGraphics','Foundation','UIKit'
  
  s.pod_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  
  s.libraries = 'c++', 'z', 'sqlite3', 'xml2', 'resolv'
  
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 armv7s arm64' }
  
  s.default_subspecs = 'AnyThinkSDKTT'

  s.subspec 'AnyThinkSDKTT' do |ss|
    ss.ios.deployment_target = '9.0'
  ss.vendored_frameworks = 'AnyThinkiOS/AnyThink{Banner,Splash,SDK,RewardedVideo,Interstitial,Native}.framework'
      ss.resource = 'AnyThinkiOS/AnyThinkSDK.bundle'
  end
  
    s.subspec 'AnyThinkApplovinAdapterTT' do |ss|
    ss.dependency 'AppLovinSDK','10.3.2'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkApplovinAdapter/AnyThinkApplovinAdapter.framework'
  end
  
    s.subspec 'AnyThinkGDTAdapterTT' do |ss|
    ss.dependency 'GDTMobSDK','4.12.90'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkGDTAdapter/AnyThinkGDTAdapter.framework'
  end
  
    s.subspec 'AnyThinkUnityAdsAdapterTT' do |ss|
    ss.dependency 'UnityAds','3.7.4'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkUnityAdsAdapter/AnyThinkUnityAdsAdapter.framework'
  end
  
    s.subspec 'AnyThinkSigmobAdapterTT' do |ss|
    ss.dependency 'SigmobAd-iOS','3.1.2'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkSigmobAdapter/AnyThinkSigmobAdapter.framework'
  end
  
    s.subspec 'AnyThinkKuaiShouAdapterTT' do |ss|
    ss.dependency 'KSAdSDK','3.3.11'
    ss.dependency 'SDWebImage'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkKuaiShouAdapter/AnyThinkKuaiShouAdapter.framework'
  end
  
    s.subspec 'AnyThinkAdColonyAdapterTT' do |ss|
    ss.dependency 'AdColony','4.6.1'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkAdColonyAdapter/AnyThinkAdColonyAdapter.framework'
  end

    s.subspec 'AnyThinkTapjoyAdapterTT' do |ss|
    ss.dependency 'TapjoySDK','12.8.1'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkTapjoyAdapter/AnyThinkTapjoyAdapter.framework'
  end
  
    s.subspec 'AnyThinkBaiduAdapterTT' do |ss|
    ss.dependency 'BaiduMobAdSDK','4.79'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkBaiduAdapter/AnyThinkBaiduAdapter.framework'
  end
  
    s.subspec 'AnyThinkNendAdapterTT' do |ss|
    ss.dependency 'NendSDK_iOS','7.0.5'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkNendAdapter/AnyThinkNendAdapter.framework'
  end
  
    s.subspec 'AnyThinkMaioAdapterTT' do |ss|
    ss.dependency 'MaioSDK','1.5.8'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkMaioAdapter/AnyThinkMaioAdapter.framework'
  end
  
    s.subspec 'AnyThinkMyTargetAdapterTT' do |ss|
    ss.dependency 'myTargetSDK','5.12.0'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkMyTargetAdapter/AnyThinkMyTargetAdapter.framework'
  end
  
    s.subspec 'AnyThinkFyberAdapterTT' do |ss|
    ss.dependency 'Fyber_Marketplace_SDK','7.8.6'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkFyberAdapter/AnyThinkFyberAdapter.framework'
  end

    s.subspec 'AnyThinkChartboostAdapterTT' do |ss|
    ss.dependency 'ChartboostSDK','8.4.2'
    ss.dependency 'ChartboostHelium','2.3.1'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkChartboostAdapter/AnyThinkChartboostAdapter.framework'
  end
  
    s.subspec 'AnyThinkStartAppAdapterTT' do |ss|
    ss.dependency 'StartAppSDK','4.5.0'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkStartAppAdapter/AnyThinkStartAppAdapter.framework'
  end

    s.subspec 'AnyThinkIronSourceAdapterTT' do |ss|
    ss.dependency 'IronSourceSDK','7.1.7'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkIronSourceAdapter/AnyThinkIronSourceAdapter.framework'
  end

    s.subspec 'AnyThinkInmobiAdapterTT' do |ss|
    ss.dependency 'InMobiSDK/Core','9.1.7'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkInmobiAdapter/AnyThinkInmobiAdapter.framework'
  end
  
    s.subspec 'AnyThinkMintegralAdapterTT' do |ss|
    ss.dependency 'MintegralAdSDK/All','6.9.5.1'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkMintegralAdapter/AnyThinkMintegralAdapter.framework'
  end
  
    s.subspec 'AnyThinkAdmobAdapterTT' do |ss|
    ss.dependency 'Google-Mobile-Ads-SDK','8.7.0'
    ss.dependency 'PersonalizedAdConsent'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkAdmobAdapter/AnyThinkAdmobAdapter.framework'
  end
  
    s.subspec 'AnyThinkFacebookAdapterTT' do |ss|
    ss.dependency 'FBAudienceNetwork','6.5.1'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkFacebookAdapter/AnyThinkFacebookAdapter.framework'
  end
  
    s.subspec 'AnyThinkMopubAdapterTT' do |ss|
    ss.dependency 'mopub-ios-sdk','5.17.0'
    ss.ios.deployment_target = '10.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkMopubAdapter/AnyThinkMopubAdapter.framework'
  end
  
    s.subspec 'AnyThinkKidozAdapterTT' do |ss|
    ss.dependency 'AnyThinkPrivateSDK/Kidoz','0.4.0'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkKidozAdapter/AnyThinkKidozAdapter.framework'
  end
    s.subspec 'AnyThinkOguryAdapterTT' do |ss|
    ss.dependency 'OguryAds','2.3.5'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkOguryAdapter/AnyThinkOguryAdapter.framework'
  end
    s.subspec 'AnyThinkVungleAdapterTT' do |ss|
    ss.dependency 'AnyThinkPrivateSDK/Vungle','0.4.0'
    ss.ios.deployment_target = '9.0'
    ss.dependency 'TopOnTest/AnyThinkSDKTT'
    ss.vendored_frameworks = 'AnyThinkVungleAdapter/AnyThinkVungleAdapter.framework'
  end
end
