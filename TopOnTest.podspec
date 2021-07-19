#
# Be sure to run `pod lib lint TopOnTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TopOnTest'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TopOnTest.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试
                       DESC

  s.homepage         = 'https://github.com/GPPG/topon_pod_test.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'GUO PENG' => 'ios' }
  s.source           = { :git => 'https://github.com/GPPG/topon_pod_test.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'AnyThinkGDTAdapter/AnyThinkGDTAdapter.framework/Headers/*.{h}'
  
  s.vendored_frameworks = 'AnyThinkGDTAdapter/AnyThinkGDTAdapter.framework'
  
  s.static_framework = true

  # s.resource_bundles = {
  #   'TopOnTest' => ['TopOnTest/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'SystemConfiguration', 'CoreGraphics','Foundation','UIKit'
  #s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'AnyThinkiOS', '5.7.62'
  s.dependency 'GDTMobSDK', '4.12.81'

end
