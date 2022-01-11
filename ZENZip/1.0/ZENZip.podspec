Pod::Spec.new do |s|
  s.name         = "ZENZip"
  s.version      = "1.0"
  s.summary      = "Micro ZIP Archive library"
  s.homepage     = "https://confluence.zmok.net/display/ZENCOMP/ZENZip"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Ondrej Hanslik" => "ondrej.hanslik@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zenzip-ios.git", :tag => "1.0" }
  s.platform     = :ios, '12.4'
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
  s.requires_arc = true
  s.source_files = 'src/*.swift'
end
