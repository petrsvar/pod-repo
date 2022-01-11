Pod::Spec.new do |s|
  s.name         = "ZENAR"
  s.version      = "1.0"
  s.summary      = "Component for displaying annotations in augmented reality"
  s.homepage     = "https://confluence.zmok.net/display/ZENCOMP/ZEN%3AAR"
  s.license      = { :type => 'MIT' }
  s.author       = { "Lukas Petrik" => "lukas.petrik@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zenar/zen-ar-ios.git", :tag => "1.0" }
  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
  s.requires_arc = true
  s.source_files = 'ZENAR Test/ZENAR/**/*.swift'
  s.frameworks   = 'ARKit', 'CoreLocation'
end
