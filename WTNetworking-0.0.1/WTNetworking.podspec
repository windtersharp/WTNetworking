Pod::Spec.new do |s|
  s.name = "WTNetworking"
  s.version = "0.0.1"
  s.summary = "WTNetworking"
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"windtersharp"=>"windter@126.com"}
  s.homepage = "https://github.com/windtersharp/WTNetworking"
  s.description = "Add long description of the WTNetworking"
  s.frameworks = ["Foundation", "UIKit"]
  s.requires_arc = true
  s.source = { :path => '.' }

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'ios/WTNetworking.framework'
end
