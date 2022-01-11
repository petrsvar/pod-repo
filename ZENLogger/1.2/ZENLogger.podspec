Pod::Spec.new do |s|
  s.name         = "ZENLogger"
  s.version      = "1.2"
  s.summary      = "Debug logging utility"
  s.homepage     = "https://confluence.zmok.net/display/ZENCOMP/ZENLogger"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Lukas Petrik" => "lukas.petrik@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zenlogger.git", :tag => "1.2" }
  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
  s.requires_arc = true
  s.source_files = '*.swift'
end
