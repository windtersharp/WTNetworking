#
# Be sure to run `pod lib lint WTNetworking.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WTNetworking'
  s.version          = '2.0.1'
  s.summary          = 'WTNetworking'
  s.description      = 'Add long description of the WTNetworking'

  s.homepage         = 'https://github.com/windtersharp/WTNetworking'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'windtersharp' => 'windter@126.com' }
  s.source           = { :git => 'https://github.com/windtersharp/WTNetworking.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.source_files = 'WTNetworking/Classes/*.{h,m}'
  
  # s.resource_bundles = {
  #   'WTNetworking' => ['WTNetworking/Assets/*.png']
  # }

  s.public_header_files = 'WTNetworking/Classes/*.h'
  s.frameworks = 'Foundation', 'UIKit'
  s.dependency 'AFNetworking'
  s.dependency 'WTFoundation' 
  s.dependency 'WTOpenSSL'
  # s.xcconfig = {'OTHER_LDFLAGS' => '-OBJC'}


end
