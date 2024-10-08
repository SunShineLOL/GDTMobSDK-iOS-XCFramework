#
# Be sure to run `pod lib lint GDTMobSDK-iOS-XCFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GDTMobSDK-iOS-XCFramework'
  s.version          = '0.1.0'
  s.summary          = 'GDTMobSDK-iOS-XCFramework is a secondary packaging that supports XCFramework for the Tencent GDTMobSDK (Guang Diantong Advertising SDK).'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
  s.description      = <<-DESC
  TODO: Add long description of the pod here.
  DESC
  
  s.homepage         = 'https://github.com/443623074@qq.com/GDTMobSDK-iOS-XCFramework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '443623074@qq.com' => 'v1chenzn@sph.com.sg' }
  s.source           = { :git => 'https://github.com/443623074@qq.com/GDTMobSDK-iOS-XCFramework.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '13.0'
  
  #s.source_files = 'GDTMobSDK-iOS-XCFramework/Classes/**/*'
  s.vendored_frameworks = 'GDTMobSDK-iOS-XCFramework/GDTMobSDK/GDTMobSDK.xcframework'
  
  # s.resource_bundles = {
  #   'GDTMobSDK-iOS-XCFramework' => ['GDTMobSDK-iOS-XCFramework/Assets/*.png']
  # }
  
  s.public_header_files = 'GDTMobSDK-iOS-XCFramework/GDTMobSDK/GDTMobSDK.xcframework/*/Headers/*.h'
  s.frameworks = [
  "StoreKit",
  "Security",
  "CoreTelephony",
  "AdSupport",
  "CoreLocation",
  "QuartzCore",
  "SystemConfiguration",
  "AVFoundation",
  "JavaScriptCore"
  ]
  
  s.libraries = [
  "z",
  "xml2",
  "sqlite3",
  "c++",
  "c++abi"
  ]
  # s.dependency 'AFNetworking', '~> 2.3'
end
