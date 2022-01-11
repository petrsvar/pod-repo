Pod::Spec.new do |s|
  s.name         = "ZNI"
  s.version      = "2.4"
  s.summary      = "Networking Integration Components"
  s.homepage     = "https://confluence.zmok.net/display/ZENCOMP/ZNI"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Lukas Petrik" => "lukas.petrik@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zni.git", :tag => "2.4" }
  s.platform     = :ios, '12.0'
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
  s.requires_arc = true
  s.source_files = 'src/*.swift'
  s.dependency 'ZENLogger', '~> 1.1'
end
